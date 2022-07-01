<?php

use yii\helpers\Html;
use yii\widgets\DetailView;
use app\models\MyDate;
use yii\helpers\Url;
use kartik\editable\Editable;
use chillerlan\QRCode\QRCode;

/* @var $this yii\web\View */
/* @var $model app\models\Booking */

$this->title = $model->title;
$this->params['breadcrumbs'][] = ['label' => 'รายการการแจ้งปัญหา', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
\yii\web\YiiAsset::register($this);
?>
<div class="booking-view">
    <div class="panel panel-warning">
        <div class="panel-heading"><i class="fa fa-plus-circle" aria-hidden="true"></i> <?= $this->title ?></div>
        <div class="panel-body">
            <p>
                <?php if (Yii::$app->user->identity->username == $model->question_by && ($model->job_status == 1 || $model->job_status == 2)) { ?>
                    <?= Html::a('แก้ไข', ['update', 'id' => $model->id], ['class' => 'btn btn-primary']) ?>
                    <?= Html::a('ยุติด้วยตนเอง', ['end-by-self', 'id' => $model->id], [
                        'class' => 'btn btn-danger',
                        'data' => [
                            'confirm' => 'ยืนยันการยุติด้วยตนเอง ?',
                            'method' => 'post',
                        ],
                    ]) ?>
                <?php } ?>

                <?php if (Yii::$app->user->identity->role == 99) { ?>
                    <?= Html::a('<i class="fa fa-retweet" aria-hidden="true"></i> ตอบคำถาม แนะนำวิธีแก้ไข', ['answer', 'id' => $model->id], ['class' => 'btn btn-success']) ?>
                <?php } ?>


            </p>
            <?php
            // $data = Url::current([], true);
            //$qr = new QRCode();
            ?>
            <?= DetailView::widget([
                'model' => $model,
                'attributes' => [
                    [
                        'format' => 'html',
                        'label' => 'เรื่อง',
                        'value' => $model->title . ' (' . $model->status . ')',
                    ],
                    [
                        'format' => 'html',
                        'label' => 'ระบบงาน',
                        'value' => $model->system->fullSystemName,
                    ],
                    [
                        'format' => 'html',
                        'label' => 'รายละเอียด',
                        'value' => '<span style="color:green;">' . $model->content_question . '</span>'
                    ],
                    [
                        'format' => 'html',
                        'label' => 'สอบถามโดย',
                        'value' => \app\models\User::getFullNameByUsername($model->question_by) . ' (' . $model->dltOffice->OFF_LOC_ABREV . ')'
                    ],

                    /*
                    [
                        'format'=>'raw',
                        'label' => 'QR_CODE',
                        'value' => '<img src="'.$qr->render($data).'" class="rounded mx-auto d-block" alt="...">'
                    ],
                    */
                ],
            ]) ?>
        </div>

        <div class="panel-body">
            <label class="control-label" > ภาพถ่าย </label>
            <div class="panel panel-default">
                <?= dosamigos\gallery\Gallery::widget(['items' => $model->getThumbnails($model->ref, $model->title)]); ?>
            </div>
        </div>
    </div>
    <?php
    if ($model->job_status = 3) { ?>

        <div class="panel panel-primary">
            <div class="panel-heading"><i class="fa fa-check" aria-hidden="true"></i> วิธีแก้ปัญหา / คำแนะนำ</div>
            <div class="panel-body">
                <?= $model->content_answer ?>
            </div>
        </div>
        <?php
    }
    ?>

</div>
