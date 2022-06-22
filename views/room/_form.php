<?php

use yii\helpers\Html;
use yii\helpers\Url;
use kartik\form\ActiveForm;
use yii\helpers\ArrayHelper;
use kartik\widgets\FileInput;
use kartik\select2\Select2;
use kartik\color\ColorInput;
/* @var $this yii\web\View */
/* @var $model app\models\Room */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="room-form">
    <div class="panel panel-default">
        <div class="panel-heading"><?= $this->title ?></div>
        <div class="panel-body">
            <?php $form = ActiveForm::begin(); ?>
            <?=$form->errorSummary($model) ?>
            <?= $form->field($model, 'ref')->hiddenInput(['maxlength' => 50])->label(false); ?>
<div class="row">
    <div class="col-md-3" >
        <?=
        $form->field($model, 'builder_id')->widget(Select2::classname(), [
            'data' => ArrayHelper::map(\app\models\Builder::find()->all(), 'b_code','b_desc'),
            'disabled' => false,
            'options' => ['placeholder' => 'เลือก  อาคาร',
                //'id' => 'ddl-province-start',
            ],
            'pluginOptions' => [
                'allowClear' => true
            ],
        ])->label('อาคาร');
        ?>
    </div>
    <div class="col-md-4">
        <?= $form->field($model, 'room_title')->textInput(['maxlength' => true]) ?>
    </div>
    <div class="col-md-3">
        <?= $form->field($model, 'room_color')->widget(ColorInput::classname(), [
        'options' => ['placeholder' => 'กำหนดสี ...'],
        ])->label('กำหนดสี label');
        ?>
    </div>
</div>
            <div class="row">
                <div class="col-md-12">
                    <?= $form->field($model, 'room_detail')->widget(\yii\redactor\widgets\Redactor::className(), [
                        'clientOptions' => [
                            'imageManagerJson' => ['/redactor/upload/image-json'],
                            'imageUpload' => ['/redactor/upload/image'],
                            'fileUpload' => ['/redactor/upload/file'],
                            'lang' => 'th',
                            'plugins' => ['clips', 'fontcolor','imagemanager']
                        ]
                    ])->label('รายละเอียด แบบย่อ')?>
                </div>
            </div>
            <div class="form-group field-upload_files">
                <label class="control-label" for="upload_files[]"> ภาพถ่าย </label>
                <div>
                    <?= FileInput::widget([
                        'name' => 'upload_ajax[]',
                        'options' => ['multiple' => true,'accept' => 'image/*'], //'accept' => 'image/*' หากต้องเฉพาะ image
                        'pluginOptions' => [
                            'overwriteInitial'=>false,
                            'encodeUrl'=>false,
                            'initialPreviewShowDelete'=>true,
                            'initialPreview'=> $initialPreview,
                            'initialPreviewConfig'=> $initialPreviewConfig,
                            'uploadUrl' => Url::to(['/room/upload-ajax']),
                            'uploadExtraData' => [
                                'ref' => $model->ref,
                            ],
                            'maxFileCount' => 100
                        ]
                    ]);
                    ?>
                </div>
            </div>
            <div class="form-group">
                <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
            </div>

            <?php ActiveForm::end(); ?>
        </div>
    </div>


</div>
