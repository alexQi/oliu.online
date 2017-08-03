<?php

/* @var $this \yii\web\View */
/* @var $content string */

use yii\helpers\Html;
use yii\widgets\Pjax;
use yii\grid\GridView;
use yii\bootstrap\Modal;

use yii\widgets\LinkPager;
$server = $_SERVER;

?>
<div class="row">
    <div class="col-md-6">
        <div class="box box-success box-solid">
            <div class="box-header with-border">
                <h3 class="box-title"><i class="glyphicon glyphicon-info-sign"></i>系统信息</h3>
            </div>
            <!-- /.box-header -->
            <div class="box-body no-padding">
                <table class="table">
                    <tbody>
                    <tr>
                        <td>当前PHP版本</td>
                        <td><?=PHP_VERSION?>/<code>Yii Framework <?=Yii::getVersion();?></code></td>
                    </tr>
                    <tr>
                        <td>操作系统版本</td>
                        <td><?=PHP_OS?></td>
                    </tr>
                    <tr>
                        <td>文件最大上传</td>
                        <td><?= ini_get("upload_max_filesize"); ?></td>
                    </tr>
                    <tr>
                        <td>工作模式</td>
                        <td><?=$server["SERVER_SOFTWARE"]?>/<?=php_sapi_name();?></td>
                    </tr>
                    <tr>
                        <td>工作路径</td>
                        <td><?=$server["DOCUMENT_ROOT"]?></td>
                    </tr>
                    <tr>
                        <td>程序版本</td>
                        <td><?php
                            exec("git status", $info);
                            exec("du -hs ../", $a);
                            echo $info[0] . '&nbsp;'.'体积:' . str_replace("../","",$a[0]);
                            ?>

                            <button type="button" class="btn bg-navy btn-flat margin" onclick="window.location.href='<?=\yii\helpers\Url::to(['/site/default/flush-cache'])?>'">清楚缓存</button>
                        </td>
                    </tr>
                    </tbody>
                </table>
            </div>
            <!-- /.box-body -->
        </div>
        <!-- /.box -->
    </div>
    <div class="col-md-6">
        <div class="box box-success box-solid">
            <div class="box-header with-border">
                <h3 class="box-title"><i class="glyphicon glyphicon-fire"></i>MYSQL运行信息</h3>

                <div class="box-tools">
                    <ul class="pagination pagination-sm no-margin pull-right">
                        <li><a href="#">«</a></li>
                        <li><a href="#">1</a></li>
                        <li><a href="#">2</a></li>
                        <li><a href="#">3</a></li>
                        <li><a href="#">»</a></li>
                    </ul>
                </div>
            </div>
            <!-- /.box-header -->
            <div class="box-body no-padding">
                <?php Pjax::begin(['id' => 'tube-list', 'clientOptions' => ["skipOuterContainers" => true]]);?>
                <?=GridView::widget([
                    'dataProvider' => $mysqlInfo,
                    'layout'       => "{summary}{items}<div class=\"text-right tooltip-demo\">{pager}</div>",
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
//                        [
//                            'attribute' => 'User',
//                            'label'     => '用户',
//                        ],
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
            <!-- /.box-body -->
        </div>
        <!-- /.box -->
    </div>
</div>