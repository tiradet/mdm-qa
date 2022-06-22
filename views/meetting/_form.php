<?php

use yii\helpers\Html;
use kartik\form\ActiveForm;
use kartik\datetime\DateTimePicker;
use yii\helpers\ArrayHelper;
use kartik\select2\Select2;
use kartik\typeahead\TypeaheadBasic;
use kartik\depdrop\DepDrop;
use yii\helpers\Url;
use bookin\aws\checkbox\AwesomeCheckbox;
/* @var $this yii\web\View */
/* @var $model app\models\Booking */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="booking-form">


    <?php $form = ActiveForm::begin(); ?>
    <div class="row">
        <div class="col-md-3">
            <?=
            $form->field($model, 'builder_ref')->widget(Select2::classname(), [
                'data' => ArrayHelper::map(\app\models\Builder::find()->all(), 'b_code','b_desc'),
                'disabled' => false,
                'options' => ['placeholder' => 'เลือก  อาคาร',
                    'id' => 'ddl-builder',
                ],
                'pluginOptions' => [
                    'allowClear' => true
                ],
            ])->label('อาคาร');
            ?>

        </div>
        <div class="col-md-3">
            <?=
            $form->field($model, 'room_ref')->widget(DepDrop::classname(), [
                'options' => [
                    //'id' => 'ddl-room_ref'
                ],
                'data' => $builder,
                'pluginOptions' => [
                    'depends' => ['ddl-builder'],
                    'placeholder' => 'เลือกห้องประชุม...',
                    'url' => Url::to(['/booking/get-builder'])
                ]
            ])->label('เลือกห้องประชุม');
            ?>
        </div>
        <div class="col-md-6">
            <?= $form->field($model, 'title')->textInput(['maxlength' => true])->label('หัวข้อการประชุม') ?>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12">
            <?= $form->field($model, 'content')->widget(\yii\redactor\widgets\Redactor::className(), [
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
    <div class="row">
        <div class="col-md-4">
            <label class="control-label">เริ่ม</label>
            <?php echo DateTimePicker::widget([
                'model' => $model,
                'attribute' => 'start_meet',
                'options' => [
                    'readonly' => true,
                    'placeholder' => 'Begin event time ',
                ],
                'pluginOptions' => [
                    'autoclose' => true
                ]
            ]);
            ?>
        </div>
        <div class="col-md-4">
            <label class="control-label">สิ้นสุด</label>
            <?php echo DateTimePicker::widget([
                'model' => $model,
                'attribute' => 'end_meet',
                'options' => [
                    'readonly' => true,
                    'placeholder' => 'End event time ',
                ],
                'pluginOptions' => [
                    'removeButton' => false,
                    'pickerButton' => ['icon' => 'time'],
                    'autoclose' => true
                ]
            ]);
            ?>
        </div>
        <div class="col-md-4">
            <?= $form->field($model, 'booking')->textInput(['maxlength' => true])->label('ผู้ที่ดำเนินการจอง') ?>
        </div>
    </div>

    <hr/>

    <div class="row block ">
        <div class="col-md-6 col-xs-6">
            <?= Html::submitButton($model->isNewRecord ? '<i class="fa fa-floppy-o" aria-hidden="true"></i> บันทึก' : 'อัพเดทข้อมูล', ['class' => ($model->isNewRecord ? 'btn btn-success' : 'btn btn-primary') . '   btn-block']) ?>
        </div>
        <div class="col-md-6 col-xs-6">
            <?= Html::resetButton($model->isNewRecord ? '<i class="glyphicon glyphicon-refresh"></i> เคลียร์ข้อมูล' : 'คืนค่าเดิม', ['class' => ($model->isNewRecord ? 'btn btn-danger' : 'btn btn-warning') . '   btn-block']) ?>
        </div>
    </div>

    <?php ActiveForm::end(); ?>

</div>
