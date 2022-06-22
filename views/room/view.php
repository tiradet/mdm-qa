<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model app\models\Room */
use yii\helpers\Url;
$this->title = $model->room_title;
$this->params['breadcrumbs'][] = ['label' => 'รายการห้องประชุม', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
\yii\web\YiiAsset::register($this);
?>
<div class="room-view">

<div class="panel panel-success">
    <div class="panel-heading"><i class="fa fa-plus-circle" aria-hidden="true"></i> <?= $this->title ?></div>
    <div class="panel-body">
 <p>
        <?= Html::a('Update', ['update', 'id' => $model->id], ['class' => 'btn btn-primary']) ?>
        <?= Html::a('Delete', ['delete', 'id' => $model->id], [
            'class' => 'btn btn-danger',
            'data' => [
                'confirm' => 'Are you sure you want to delete this item?',
                'method' => 'post',
            ],
        ]) ?>
    </p>

    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'id',
            [
                'label' => 'อาคาร',
                'value' =>  $model->builder->b_desc,
            ],
            'room_title',
                [
                    'format'=>'html',
                    'label' => 'รายละเอียด',
                    'value' => '<span style="color:green;" "class"= "img-responsive">'.$model->room_detail.'</span>'
                ],
           // 'room_img',
           // 'room_option',
        ],
    ]) ?>
        <div class="panel panel-default">
            <div class="panel-body">
                <?= dosamigos\gallery\Gallery::widget(['items' => $model->getThumbnails($model->ref,$model->room_title)]);?>
            </div>
        </div>
    </div>
</div>
   
</div>
