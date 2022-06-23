<?php

use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model app\models\UserDlt */
?>
<div class="user-dlt-view">
 
    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'username',
            'role',
            'status',
            'positionDesc',
            'orgFullNameDes',
            'offLocDesc',
            'offLocCode',
            'id_no',
            'title',
            'name',
            'surname',
        ],
    ]) ?>

</div>
