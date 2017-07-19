<?php

/* @var $this \yii\web\View */
/* @var $content string */

use yii\helpers\Html;
use yii\widgets\Pjax;
use yii\grid\GridView;
use yii\bootstrap\Modal;
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
                exec("du -hs ../", $a);
                echo $info[0] . '&nbsp;'.'体积:' . str_replace("../","",$a[0]);
                ?>
            </div>
        </div>
    </div>
    <div class="col-lg-7">
        <div class="panel panel-success">
            <div class="panel-heading"><i class="glyphicon glyphicon-fire"></i>MYSQL运行信息</div>
            <div class="panel-body">
                <?php Pjax::begin(['id' => 'tube-list', 'clientOptions' => ["skipOuterContainers" => true]]);?>
                <?=GridView::widget([
                    'dataProvider' => $mysqlInfo,
                    'layout'       => "{summary}{pager}{items}",
                    'summary'      => "当前共有{totalCount}条数据,分为{pageCount}页,当前为第{page}页",
                    'columns'      => [
                        [
                            'attribute' => 'Id',
                            'label'     => 'ID',
                            'format'    => 'raw',
                            'value'     => function ($val) {
                                return $val['Id'];
                            },
                        ],
                        [
                            'attribute' => 'User',
                            'label'     => '用户',
                        ],
                        [
                            'attribute' => 'Host',
                            'label'     => '地址',
                        ],
                        [
                            'attribute' => 'Command',
                            'label'     => '命令类型',
                        ],
                        [
                            'attribute' => 'Time',
                            'label'     => '用时',
                        ],
                        [
                            'attribute' => 'State',
                            'label'     => '状态',
                        ],
                        [
                            'attribute' => 'Info',
                            'label'     => '命令',
                        ],

                    ],
                ]);?>
                <?php Pjax::end();?>
            </div>
        </div>
    </div>
</div>
<div class="row">
    <div class="col-lg-12">
        <div class="panel panel-info">
            <div class="panel-heading"><i class="glyphicon glyphicon-transfer"></i> beanstalk队列运行信息</div>
            <div class="panel-body">
                <?php Pjax::begin(['id' => 'tube-list', 'clientOptions' => ["skipOuterContainers" => true]]);?>
                <?=GridView::widget([
                    'dataProvider' => $dataProvider,
                    'layout'       => "{summary}{pager}{items}",
                    'summary'      => "当前共有{totalCount}条数据,分为{pageCount}页,当前为第{page}页",
                    'columns'      => [
                        [
                            'attribute' => 'name',
                            'label'     => '队列名称',
                            'format'    => 'raw',
                            'value'     => function ($val) {
                                return Html::a($val->name,
                                    ["/system/beanstalk/channel", "name" => $val->name],
                                    [
                                        'class'       => (int) $val["current-jobs-buried"] > 0 ? 'detail-link btn btn-sm btn-danger' : 'detail-link btn btn-sm btn-success',
                                        'data-pjax'   => "0",
                                        'data-key'    => $val->name,
                                        'data-toggle' => 'modal',
                                        'data-target' => '#activity-modal',
                                    ]);
                            },
                        ],
                        [
                            'attribute' => 'total-jobs',
                            'label'     => '总数',
                        ],
                        [
                            'attribute' => 'current-jobs-ready',
                            'label'     => '准备就绪',
                        ],
                        [
                            'attribute' => 'current-jobs-reserved',
                            'label'     => '已接收',
                        ],
                        [
                            'attribute' => 'current-jobs-delayed',
                            'label'     => '延时处理',
                        ],
                        [
                            'attribute' => 'current-jobs-buried',
                            'label'     => '已睡眠',
                        ],

                    ],
                ]);?>
                <?php Pjax::end();?>
                <?php Modal::begin([
                    'id'     => 'activity-modal',
                    'header' => '<h4 class="modal-title">队列详情</h4>',
                    'footer' => '<a href="#" class="btn btn-primary" data-dismiss="modal">关闭</a>',
                ]);?>

                <div class="well">

                </div>
                <?php Modal::end();?>
            </div>
        </div>
    </div>
</div>
