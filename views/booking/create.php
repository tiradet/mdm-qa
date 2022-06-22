<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\Booking */

$this->title = 'บันทึกการจองห้องประชุม';
$this->params['breadcrumbs'][] = ['label' => 'รายการจองห้องประชุม', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="booking-create">

<div class="panel panel-warning">
    <div class="panel-heading"><i class="fa fa-plus-circle" aria-hidden="true"></i> <?= $this->title ?></div>
    <div class="panel-body">
        <?= $this->render('_form', [
            'model' => $model,
            'builder' => [],
        ]) ?>
    </div>
</div>
</div>

