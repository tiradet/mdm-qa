<?php
use yii\helpers\Html;
use yii\widgets\ActiveForm;
use bookin\aws\checkbox\AwesomeCheckbox;
/* @var $this yii\web\View */
/* @var $model app\models\UserDlt */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="user-dlt-form">

    <?php $form = ActiveForm::begin(); ?>
<div class="row">
    <div class="col-md-4">
        <?= $form->field($model, 'username')->textInput(['maxlength' => true]) ?>
    </div>
    <div class="col-md-4">
        <?php
        echo $form->field($model, 'role')->widget(AwesomeCheckbox::classname(),[
            'type'=>AwesomeCheckbox::TYPE_RADIO,
            'style'=>AwesomeCheckbox::STYLE_PRIMARY,
            'options'=>[
                'class'=>'form-controlradio'
            ],
            'list'=>[ // array data
                '10'=>'User',
                '99'=>'Administrator',
            ]
        ]);
        ?>
    </div>
    <div class="col-md-4">
        <?php
        echo $form->field($model, 'status')->widget(AwesomeCheckbox::classname(),[
            'type'=>AwesomeCheckbox::TYPE_RADIO,
            'style'=>AwesomeCheckbox::STYLE_PRIMARY,
            'options'=>[
                'class'=>'form-controlradio'
            ],
            'list'=>[ // array data
                '10'=>'Active',
                '0'=>'InActive',
            ]
        ]);
        ?>
    </div>
</div>
    <div class="row">
        <div class="col-md-4">
            <?= $form->field($model, 'title')->textInput(['maxlength' => true]) ?>
        </div>
        <div class="col-md-4">
            <?= $form->field($model, 'name')->textInput(['maxlength' => true]) ?>
        </div>
        <div class="col-md-4">
            <?= $form->field($model, 'surname')->textInput(['maxlength' => true]) ?>
        </div>
    </div>
    <div class="row">
        <div class="col-md-4">
            <?= $form->field($model, 'positionDesc')->textInput(['maxlength' => true]) ?>
        </div>
        <div class="col-md-4">
            <?= $form->field($model, 'offLocDesc')->textInput(['maxlength' => true]) ?>
        </div>
        <div class="col-md-4">
            <?= $form->field($model, 'orgFullNameDes')->textInput(['maxlength' => true]) ?>
        </div>
    </div>

	<?php if (!Yii::$app->request->isAjax){ ?>
	  	<div class="form-group">
	        <?= Html::submitButton($model->isNewRecord ? 'Create' : 'Update', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
	    </div>
	<?php } ?>

    <?php ActiveForm::end(); ?>
    
</div>
