<?php
use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\Builder */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="builder-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'b_code')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'b_desc')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'b_off_desc')->textInput(['maxlength' => true]) ?>

  
	<?php if (!Yii::$app->request->isAjax){ ?>
	  	<div class="form-group">
	        <?= Html::submitButton($model->isNewRecord ? 'Create' : 'Update', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
	    </div>
	<?php } ?>

    <?php ActiveForm::end(); ?>
    
</div>
