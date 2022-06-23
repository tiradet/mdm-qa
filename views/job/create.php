<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\JobRequest */

$this->title = 'แจ้งปัญหา การใช้งานระบบงานต่างๆ';
$this->params['breadcrumbs'][] = ['label' => 'รายการแจ้งปัญหา', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="job-request-create">
    <?= $this->render('_form', [
        'model' => $model,
        'initialPreview'=>[],
        'initialPreviewConfig'=>[]
    ]) ?>

</div>
