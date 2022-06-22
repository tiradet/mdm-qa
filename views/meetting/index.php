<?php
use yii\helpers\Html;
use kartik\grid\GridView;
use kartik\select2\Select2;
use yii\helpers\ArrayHelper;
use yii\widgets\Pjax;
use yii\bootstrap\Modal;
use yii\helpers\Url;
use app\models\MyDate;

/* @var $this yii\web\View */
/* @var $searchModel app\models\BookingSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'รายการจอง';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="booking-index">
    <div class="panel panel-info">
        <div class="panel-heading"><i class="fa fa-desktop" aria-hidden="true"></i> <?= $this->title?></div>
        <div class="panel-body">
    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        //'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],
            [ 
                'label'=>'ห้องประชุม',
                'format' => 'raw',
                        'value' => function($model) {
                            return $model->room->room_title;
                        },
            ],
            'title',
            //'content',
                        [ 
                'label'=>'เริ่ม',
                'format' => 'raw',
                        'value' => function($model) {
                            return MyDate::getDateThaifull($model->start_meet);
                        },
            ],
                        [ 
                'label'=>'ถึง',
                'format' => 'raw',
                        'value' => function($model) {
                            return MyDate::getDateThaifull($model->end_meet);
                        },
            ],
            //'booking',
            //'approve',
            //'create_at',
            //'update_at',
            //'create_by',
            //'update_by',

[
                        'class' => 'yii\grid\ActionColumn',
                        'buttonOptions' => ['class' => 'btn btn-default'],
                        'template' => '<div class="btn-group btn-group-sm text-center" role="group">{view-ajax}</div>',
                        'options' => ['style' => 'width:auto;'],
                        'buttons' => [
                            'view-ajax' => function($url, $model, $key) {
                                $url = Url::to(['/booking/view-ajax', 'id' => $model->id,]);
                                return Html::a('<i class="fa fa-eye" aria-hidden="true"></i> ', $url, [
                                    'class' => 'btn btn-primary',
                                    'data-pjax' => '0',
                                    'data-toggle' => 'modal',
                                    'data-target' => '#myModal',
                                    'data-title' => " ข้อมูลการจอง",
                                    'data-pjax' => '0',
                                ]);
                            },

                        ]
                    ],
        ],
    ]); ?>

        </div>
    </div>
</div>
<?php
Modal::begin([
    'id' => 'myModal',
    'header' => '<h4 class="modal-title fa fa-th-large ">...</h4>',
    'headerOptions'=>['class'=>'modal-header modal-header-success'],
    'size' => 'modal-lg',
    'options' => [
        // 'id' => 'kartik-modal',
        'tabindex' => false // important for Select2 to work properly
    ],
]);

echo '...';

Modal::end();
?>
<?php
$this->registerJs("
    $('#myModal').on('show.bs.modal', function (event) {
        var button = $(event.relatedTarget)
        var modal = $(this)
        var title = button.data('title')
        var href = button.attr('href')
        modal.find('.modal-title').html(title)
        modal.find('.modal-body').html('<i class=\"fa fa-spinner fa-pulse\"></i>')
        $.post(href)
            .done(function( data ) {
                modal.find('.modal-body').html(data)
            });
        })
");
?>