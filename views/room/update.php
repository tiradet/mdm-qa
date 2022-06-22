<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\Room */

$this->title = 'อัพเดท ห้องประชุม: ' . $model->room_title;
$this->params['breadcrumbs'][] = ['label' => 'รายการห้องประชุม', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->room_title, 'url' => ['view', 'id' => $model->id]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="room-update">

    <?= $this->render('_form', [
        'model' => $model,
        'initialPreview'=>$initialPreview,
        'initialPreviewConfig'=>$initialPreviewConfig
    ]) ?>

</div>
