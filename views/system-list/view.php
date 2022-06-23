<?php

use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model app\models\SystemList */
?>
<div class="system-list-view">
 
    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [

            'ref',

            'system_title',

            'system_line:ntext',
        ],
    ]) ?>

</div>
