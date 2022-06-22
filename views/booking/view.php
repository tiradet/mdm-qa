<?php

use yii\helpers\Html;
use yii\widgets\DetailView;
use app\models\MyDate;
use yii\helpers\Url;
use kartik\editable\Editable;
use chillerlan\QRCode\QRCode;
/* @var $this yii\web\View */
/* @var $model app\models\Booking */

$this->title = $model->title;
$this->params['breadcrumbs'][] = ['label' => 'การจองห้องประชุม', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
\yii\web\YiiAsset::register($this);
?>
<div class="booking-view">
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
        <?php
        $data = Url::current([], true);
        $qr = new QRCode();
        ?>
    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            [
                    'format'=>'html',
                    'label' => 'ห้องประชุม',
                    'value' => '<span style="color:green;">'.$model->room->room_title.''.$model->builder->b_desc.'</span>'
                ],
            'title',
                [
                    'format'=>'html',
                    'label' => 'รายละเอียด',
                    'value' => '<span style="color:green;">'.$model->content.'</span>'
                ],
             [
                    'format'=>'html',
                    'label' => 'เริ่ม',
                    'value' =>MyDate::getDateThaifull($model->start_meet),
             ],
            [
                    'format'=>'html',
                    'label' => 'ถึง',
                    'value' =>MyDate::getDateThaifull($model->end_meet),
             ],
            'booking',
            'status',
            [
                'format'=>'raw',
                'label' => 'QR_CODE',
                'value' => '<img src="'.$qr->render($data).'" class="rounded mx-auto d-block" alt="...">'
            ],
        ],
    ]) ?>


    </div>
    <div class="panel panel-default">
        <button type="button" class="btn btn-success pull-right">ภาพห้องประชุม</button>
        <br/>
        <div class="panel-body">
            <?= dosamigos\gallery\Gallery::widget(['items' => $model->getThumbnails($model->room->ref,$model->room->room_title)]);?>
        </div>
    </div>


</div>
   
</div>
