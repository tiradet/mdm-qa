<?php

use yii\helpers\Html;
use kartik\grid\GridView;
use kartik\widgets\Select2;
use yii\helpers\ArrayHelper;

/* @var $this yii\web\View */
/* @var $searchModel app\models\RoomSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'รายการห้องประชุม';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="room-index">

    <p>
        <?= Html::a('Create Room', ['create'], ['class' => 'btn btn-success']) ?>
    </p>

    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>
<div class="panel panel-info">
        <div class="panel-heading"><i class="fa fa-desktop" aria-hidden="true"></i> <?= $this->title?></div>
        <div class="panel-body">
   <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],
        [
            'attribute' => 'builder_id',
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
            'room_title',
            [

                'label' => 'รายละเอียด',
                'format'=>'raw',
                'value'=>function ($model, $key, $index) {
                    return @$model->room_detail;
                }
            ],
            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>

        </div>
    </div>
    </div>
