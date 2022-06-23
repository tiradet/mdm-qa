<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\JobRequest */

$this->title = 'รายการแจ้งปัญหา : ' . $model->title;
$this->params['breadcrumbs'][] = ['label' => 'รายการแจ้งปัญหา', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->title, 'url' => ['view', 'id' => $model->id]];
$this->params['breadcrumbs'][] = 'ตอบปัญหา/คำแนะนำ';
?>
<div class="job-request-update">
    <?= $this->render('_form-answer', [
        'model' => $model,
        'initialPreview'=>$initialPreview,
        'initialPreviewConfig'=>$initialPreviewConfig
    ]) ?>

</div>
