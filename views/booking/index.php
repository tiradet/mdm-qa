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
        <?= Html::a('<i class="fa fa-plus-circle" aria-hidden="true"></i> บันทึกการจองห้องประชุม', ['create'], ['class' => 'btn btn-success']) ?>
    </p>



    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'panel' => [
            'type' => GridView::TYPE_SUCCESS,
            'heading' => '<i class="fa fa-th-list" aria-hidden="true"></i> '.$this->title,
        ],
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],
            [
                'attribute' => 'builder_ref',
                'headerOptions' => ['width' => 'auto'],
                'value' => function ($model, $key, $index, $widget) {
                    return $model->builder->b_desc;
                },
                'filterType' => GridView::FILTER_SELECT2,
                'filter' => ArrayHelper::map(\app\models\Builder::find()->orderBy('id')->asArray()->all(), 'b_code', 'b_desc'),
                'filterWidgetOptions' => [
                    'pluginOptions' => ['allowClear' => true],
                ],
                'contentOptions' => ['class' => 'text-rght'],
                'filterInputOptions' => ['placeholder' => 'กรองตามอาคาร'],
            ],
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
                    return \app\models\MyDate::getDateThaifull($model->start_meet);
                },
            ],
            [
                'label'=>'สิ้นสุด',
                'format' => 'raw',
                'value' => function($model) {
                    return \app\models\MyDate::getDateThaifull($model->end_meet);
                },
            ],
            [
                'class' => 'kartik\grid\EditableColumn',
                'attribute' => 'approve',
                'pageSummary' => true,
                'width' => '100px',
                // filtering grid
                'filterType'=>GridView::FILTER_SELECT2,
                'filter'=>[
                        'A'=>'รออนุมัติ',
                    'Y'=>'อนุมัติแล้ว',
                    'N'=>'ไม่อนุมัติ'
                ],
                'filterWidgetOptions'=>[
                    'pluginOptions'=>['allowClear'=>true],
                ],
                'filterInputOptions'=>['placeholder'=>'- Type -'],
                // end filtering grid
                'editableOptions'=> function ($model, $key, $index, $widget) {
                    $appttypes = [                        'A'=>'รออนุมัติ',
                        'Y'=>'อนุมัติแล้ว',
                        'N'=>'ไม่อนุมัติ'];
                    return [
                        'header' => 'สถานะ',
                        'attribute' => 'approve',
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
