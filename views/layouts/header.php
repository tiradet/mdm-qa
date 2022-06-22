<?php
use yii\helpers\Url;
?>
<nav class="navbar navbar-static-top  " role="navigation" style="margin-bottom: 0">

    <?php if(!\Yii::$app->user->isGuest): ?>
    <div class="navbar-header">
        <a class="navbar-minimalize minimalize-styl-2 btn btn-primary " href="#"><i class="fa fa-bars"></i> </a>
    </div>
    <?php endif?>

    <ul class="nav navbar-top-links navbar-right">
        <li>
            <?php if(!\Yii::$app->user->isGuest): ?>
            <span class="m-r-sm text-muted welcome-message">Welcome, <?=\Yii::$app->user->identity->fullname?> || <?=\Yii::$app->user->identity->org->OFF_LOC_DESC?></span>
            <?php endif?>
        </li>
        <?php if(!\Yii::$app->user->isGuest): ?>
        <li class="dropdown">

        </li>
        <?php endif?>

        <?php if(\Yii::$app->user->isGuest):?>
        <li>
            <a href="<?=Url::to(['/site/login'])?>">
                <i class="fa fa-sign-in"></i> Login
            </a>
        </li>
        <?php else:?>
        <li>
            <a href="<?=Url::to(['/site/logout'])?>" data-method="post">
                <i class="fa fa-sign-out"></i> ออกจากระบบ
            </a>
        </li>

        <?php endif?>
    </ul>

</nav>