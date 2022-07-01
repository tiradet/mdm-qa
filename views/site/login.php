<?php

use yii\helpers\Html;
use yii\bootstrap\ActiveForm;
use yii\widgets\Pjax;

/* @var $this yii\web\View */
/* @var $form yii\bootstrap\ActiveForm */
/* @var $model \common\models\LoginForm */

$this->title = 'เข้าสู่ระบบ';
$this->params['breadcrumbs'][] = $this->title;

?>

<div class="container">

    <div class="col-md-10 col-md-offset-1 main" >
        <div class="col-md-6 left-side" >
            <h3>MDM QA - ถามและตอบปัญหา</h3>
            <p>ศูนย์เทคโนโลยีสารสนเทศ กรมการขนส่งทางบก</p>
            <br>

        </div><!--col-sm-6-->

        <div class="col-md-6 right-side">
            <h3></h3>

            <!--Form with header-->
            <div class="form box">

                <?php $form = ActiveForm::begin(['id' => 'login-form']); ?>
                <?= $form->field($model, 'username')->label('รหัสผู้ใช้งาน') ?>
                <?= $form->field($model, 'password')->passwordInput()->label('รหัสผ่าน') ?>

                <div class="form-group">
                    <?= Html::submitButton('<i class="fa fa-sign-in" aria-hidden="true"></i> เข้าสู่ระบบ', ['class' => 'btn btn-primary', 'name' => 'login-button']) ?>
                    <?= Html::resetButton('<i class="fa fa-refresh" aria-hidden="true"></i>  ยกเลิก', ['class' => 'btn btn-danger ', 'name' => 'reset-button']) ?>

                <?php ActiveForm::end(); ?>
            </div>

            </div>
            <!--/Form with header-->

        </div><!--col-sm-6-->


    </div><!--col-sm-8-->

</div><!--container-->