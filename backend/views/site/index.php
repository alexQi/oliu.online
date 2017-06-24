<?php

/* @var $this \yii\web\View */
/* @var $content string */

use yii\helpers\Html;
$server = $_SERVER;

?>
<style>
    .modal-dialog{
        width:800px;
    }
</style>
<div class="row">
    <div class="col-lg-12">
        <div class="panel panel-primary">
            <div class="panel-heading"><i class="glyphicon glyphicon-info-sign"></i>功能区</div>
            <div class="panel-body">
                <a href="<?=\yii\helpers\Url::to(['/site/flush-cache'])?>" class="btn btn-primary">清除系统缓存</a>
                <?php if (Yii::$app->getSession()->hasFlash("navclear")): ?>
                    <code><?= \Yii::$app->getSession()->getFlash("navclear"); ?></code>
                <?php endif; ?>
                <code><?=\Yii::$app->request->getHostInfo();?></code>
            </div>
            <?php if(YII_DEBUG==='alex'):?>
                <div class="row" style="padding-left:10px;padding-right:5px;padding-bottom:10px;">
                    <?php echo Html::beginForm('http://conf.api.dev.7tkt.com/setbackend','post',['class'=>'form'])?>
                    <div class="col-lg-3"><?=Html::input('text','url','',['class'=>'form-control','id'=>'api-backend-server']);?></div>
                    <div class="col-lg-1"><?=Html::submitButton('api',['class'=>'form-control btn btn-info']);?></div>
                    <?php echo Html::endForm();?>
                    <?php echo Html::beginForm('http://conf.front.dev.7tkt.com/setbackend','post',['class'=>'form'])?>

                    <div class="col-lg-3">
                        <?=Html::input('text','url','',['class'=>'form-control','id'=>'front-backend-server']);?>
                    </div>
                    <div class="col-lg-1">
                        <?=Html::submitButton('网站',['class'=>'form-control btn btn-info']);?>
                    </div>
                    <?php echo Html::endForm();?>
                    <?php echo Html::beginForm('http://conf.ui.dev.7tkt.com/setbackend','post',['class'=>'form'])?>

                    <div class="col-lg-3">
                        <?=Html::input('text','url','',['class'=>'form-control']);?>
                    </div>
                    <div class="col-lg-1">
                        <?=Html::submitButton('UI',['class'=>'form-control btn btn-info']);?>
                    </div>

                    <?php echo Html::endForm();?>
                    <div class="clearfix"></div>
                </div>
                <script>
                    $(function(){
                        $("#api-backend-server").load("http://conf.api.dev.7tkt.com/setbackend",function(data){
                            $("#api-backend-server").val(data);
                        });
                        $("#front-backend-server").load("http://conf.front.dev.7tkt.com/setbackend",function(data){
                            $("#front-backend-server").val(data);
                        });
                        $("#ui-backend-server").load("http://conf.ui.dev.7tkt.com/setbackend",function(data){
                            $("#ui-backend-server").val(data);
                        });
                    })
                </script>
            <?php endif;?>
        </div>
    </div>

    <div class="col-lg-5">
        <div class="panel panel-info">
            <div class="panel-heading"><i class="glyphicon glyphicon-info-sign"></i>系统信息</div>
            <div class="panel-body">
                当前PHP版本:<?=PHP_VERSION?>/<code>Yii Framework <?=Yii::getVersion();?></code>
                <p></p>
                操作系统版本:<?=PHP_OS?>
                <p></p>
                文件最大上传:<?= ini_get("upload_max_filesize"); ?>
                <p></p>
                工作模式:<?=$server["SERVER_SOFTWARE"]?>/<?=php_sapi_name();?>
                <p></p>
                工作路径:<?=$server["DOCUMENT_ROOT"]?>
                <p></p>
                程序版本:<?php
                exec("git status", $info);
                exec("git tag", $gitinfo);
                var_dump($gitinfo);
                exec("du -hs ../", $a);
                echo $info[0] . '&nbsp;体积:' . str_replace("../","",$a[0]);
                ?>
            </div>
        </div>
    </div>
    <div class="col-lg-7">
        <div class="panel panel-success">
            <div class="panel-heading"><i class="glyphicon glyphicon-fire"></i>MYSQL运行信息</div>
            <div class="panel-body">
                键值总数量:3546
                <p></p>

                <?php
                array_pop($info);
                $meminfo           = 1;
                $client_list       = 2;
                $redis_version     = 3;
                $blocked_clients   = 4;
                $uptime_in_seconds = 5;
                ?>
                版本:<?=$redis_version?>
                <p></p>
                已工作时间:<?=$uptime_in_seconds?>秒
                <p></p>
                内存占用:<?=$meminfo;?>
                <p></p>
                当前连接:<?=$client_list;?>
                <p></p>
                阻塞连接:<?=$blocked_clients;?>

            </div>
        </div>
    </div>
</div>
<div class="row">
    <div class="col-lg-12">
        <div class="panel panel-info">
            <div class="panel-heading"><i class="glyphicon glyphicon-transfer"></i> beanstalk队列运行信息</div>
        </div>
    </div>
</div>
