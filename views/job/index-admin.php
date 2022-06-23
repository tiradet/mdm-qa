<?php

use yii\helpers\Html;
use  kartik\grid\GridView;
use kartik\editable\Editable;
use kartik\popover\PopoverX;
use yii\helpers\ArrayHelper;

/* @var $this yii\web\View */
/* @var $searchModel app\models\BookingSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'รายการแจ้งปัญหา';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="booking-index">
    <?php echo $this->render('_search', ['model' => $searchModel]); ?>
    <p>
        <?= Html::a('<i class="fa fa-plus-circle" aria-hidden="true"></i> บันทึกรายการแจ้งปัญหา', ['create'], ['class' => 'btn btn-danger']) ?>
    </p>



    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        //'filterModel' => $searchModel,
        'panel' => [
            'type' => GridView::TYPE_SUCCESS,
            'heading' => '<i class="fa fa-th-list" aria-hidden="true"></i> '.$this->title,
        ],
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],
            'job_ref',
            'sys_ref',
            'title',
          //  'content_answer',
            [
                    'format'=>'raw',
                'attribute' => 'job_status',
                'headerOptions' => ['width' => 'auto'],
                'value' => function ($model, $key, $index, $widget) {
                    return $model->status;
                },
            ],

            [
                'class' => 'kartik\grid\EditableColumn',
                'attribute' => 'job_status',
                'width' => '100px',
                'value' => function ($model, $key, $index, $widget) {
                    return $model->status;
                },
                'editableOptions'=> function ($model, $key, $index, $widget) {
                    $appttypes = [
                        '1'=>'รอตรวจสอบ',
                        '2'=>'กำลังตรวจสอบ',
                        '3'=>'แก้ไขเรียบร้อย'
                    ];
                    return [
                        'header' => 'สถานะ',
                        'attribute' => 'job_status',
                        'size' => 'sm',
                        'inputType' => Editable::INPUT_DROPDOWN_LIST,
                        'displayValueConfig' => $appttypes,
                        'data' => $appttypes,
                        'formOptions'=> ['action' => ['/booking/update-editable']] // point to new action
                    ];
                    }
            ],

            // 'create_at',
            //'update_at',
            //'create_by',
            //'update_by',

            [
                'class' => 'yii\grid\ActionColumn',
                'buttonOptions'=>['class'=>'btn btn-default'],
                'template'=>'<div class="btn-group btn-group-sm text-center" role="group">{view} {update}{delete}</div>',
                'options'=> ['style'=>'width:120px;'],
            ],
        ],
    ]); ?>
</div>
