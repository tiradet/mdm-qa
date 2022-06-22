<?php

use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model app\models\Builder */
?>
<div class="builder-view">
 
    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'id',
            'b_code',
            'b_desc',
            'b_off_desc',
        ],
    ]) ?>

</div>
