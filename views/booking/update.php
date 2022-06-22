<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\Booking */

$this->title = 'update รายการจองห้องประชุม: ' . $model->title;
$this->params['breadcrumbs'][] = ['label' => 'รายการจองห้องประชุม', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->title, 'url' => ['view', 'id' => $model->id]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="booking-update">



    <div class="panel panel-warning">
    <div class="panel-heading"><i class="fa fa-plus-circle" aria-hidden="true"></i> <?= $this->title ?></div>
    <div class="panel-body">
        <?= $this->render('_form', [
            'model' => $model,
            'builder' => $builder,
        ]) ?>
    </div>
</div>

</div>
