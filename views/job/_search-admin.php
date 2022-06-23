<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use yii\helpers\ArrayHelper;
use kartik\select2\Select2;
use kartik\typeahead\TypeaheadBasic;
use bookin\aws\checkbox\AwesomeCheckbox;
use yii\helpers\Url;
/* @var $this yii\web\View */
/* @var $model app\models\BookingSearch */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="booking-search" >
    <div class="panel panel-default">
        <div class="panel-body">
            <?php $form = ActiveForm::begin([
                'action' => ['index-admin'],
                'method' => 'get',
            ]); ?>

            <div class="row">
                <div class="col-md-3">
                    <?=
                    $form->field($model, 'sys_ref')->widget(Select2::classname(), [
                        'data' => ArrayHelper::map(\app\models\SystemList::find()->all(), 'ref','system_title'),
                        'disabled' => false,
                        'options' => ['placeholder' => 'เลือก  ระบบงาน',
                            'id' => 'ddl-builder',
                        ],
                        'pluginOptions' => [
                            'allowClear' => true
                        ],
                    ])->label('ระบบงาน');
                    ?>

                </div>
                <div class="col-md-3">
                    <?= $form->field($model, 'title')->textInput(['maxlength' => true])->label('เรื่อง') ?>
                </div>
                <div class="col-md-3">
                    <?php
                    echo $form->field($model, 'job_status')->widget(AwesomeCheckbox::classname(),[
                        'type'=>AwesomeCheckbox::TYPE_RADIO,
                        'style'=>AwesomeCheckbox::STYLE_PRIMARY,
                        'options'=>[
                            'class'=>'form-controlradio'
                        ],
                        'list'=>[ // array data
                            '1'=>'รอตรวจสอบ',
                            '2'=>'กำลังตรวจสอบ',
                            '3'=>'แก้ไขเรียบร้อย'
                        ]
                    ]);
                    ?>
                </div>
                <div class="col-md3">
                    <div class="form-group">
                        <br/>
                        <?= Html::submitButton('<i class="fa fa-search" aria-hidden="true"></i> Search', ['class' => 'btn btn-primary']) ?>
                        <?= Html::a('<i class="fa fa-undo" aria-hidden="true"></i> ยกเลิก', ['index-admin'], ['class' => 'btn btn-warning']) ?>
                    </div>
                </div>
            </div>
            <?php ActiveForm::end(); ?>
        </div>
    </div>
</div>
