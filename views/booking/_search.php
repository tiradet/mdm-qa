<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use yii\helpers\ArrayHelper;
use kartik\select2\Select2;
use kartik\typeahead\TypeaheadBasic;
use kartik\depdrop\DepDrop;
use yii\helpers\Url;
/* @var $this yii\web\View */
/* @var $model app\models\BookingSearch */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="booking-search" >
    <div class="panel panel-default">
        <div class="panel-body">
            <?php $form = ActiveForm::begin([
                'action' => ['index'],
                'method' => 'get',
            ]); ?>

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
                        'data' => [],
                        'pluginOptions' => [
                            'depends' => ['ddl-builder'],
                            'placeholder' => 'เลือกห้องประชุม...',
                            'url' => Url::to(['/booking/get-builder'])
                        ]
                    ])->label('เลือกห้องประชุม');
                    ?>
                </div>
                <div class="col-md-3">
                    <?= $form->field($model, 'title')->textInput(['maxlength' => true])->label('หัวข้อการประชุม') ?>
                </div>

            <div class="col-md3">
                <div class="form-group">
                    <br/>
                    <?= Html::submitButton('<i class="fa fa-search" aria-hidden="true"></i> Search', ['class' => 'btn btn-primary']) ?>
                    <?= Html::a('<i class="fa fa-undo" aria-hidden="true"></i> ยกเลิก', ['index'], ['class' => 'btn btn-warning']) ?>
                </div>
            </div>
        </div>
            <?php ActiveForm::end(); ?>
        </div>
    </div>
</div>
