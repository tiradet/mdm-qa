<?php
use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\LineToken */
/* @var $form yii\widgets\ActiveForm */
use bookin\aws\checkbox\AwesomeCheckbox;
?>

<div class="line-token-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'line_token')->textInput(['maxlength' => true]) ?>

    <?php
    echo $form->field($model, 'status')->widget(AwesomeCheckbox::classname(),[
        'type'=>AwesomeCheckbox::TYPE_RADIO,
        'style'=>AwesomeCheckbox::STYLE_PRIMARY,
        'options'=>[
            'class'=>'form-controlradio'
        ],
        'list'=>[ // array data
            '1'=>'Active',
            '2'=>'InActive'
        ]
    ]);
    ?>

    <?= $form->field($model, 'line_desc')->textInput(['maxlength' => true]) ?>

  
	<?php if (!Yii::$app->request->isAjax){ ?>
	  	<div class="form-group">
	        <?= Html::submitButton($model->isNewRecord ? 'Create' : 'Update', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
	    </div>
	<?php } ?>

    <?php ActiveForm::end(); ?>
    
</div>
