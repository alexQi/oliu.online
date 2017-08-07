<?php
use common\components\gridop\GridopWidget;
?>
<table class="table table-strip">
    <tr>
        <td>队列名</td>
        <td>任务总数</td>
        <td>任务就绪</td>
        <td>任务延时</td>
        <td>任务睡眠</td>
        <td>操作</td>
    </tr>
    <tr>
        <td><?=$queue->name?></td>
        <td><?=$queue["total-jobs"]?></td>
        <td><?=$queue["current-jobs-ready"]?></td>
        <td><?=$queue["current-jobs-delayed"]?></td>
        <td><?=$queue["current-jobs-buried"]?></td>
        <td>
            <?php if($lastBuried||$lastDelayed):?>
                <?=GridopWidget::widget(['items'=>[
                    'title'=>['label'=>'选择kick','url'=>'javascript:void(0);'],
                    'items'=>$items
                ]]);?>
            <?php endif;?>
            <?= \yii\bootstrap\Html::a('Delete Job','javascript:void(0)',['class'=>'del_job','data-url'=>\yii\helpers\Url::to(['del-job','name'=>$queue->name])]);?>
            <?= \yii\bootstrap\Html::a('Delete All Buried','javascript:void(0);',['class'=>'del_buried','data-url'=>\yii\helpers\Url::to(['del-buried','name'=>$queue->name])]);?>
        </td>
    </tr>
</table>
<?= \yii\bootstrap\Html::a('Pause ','javascript:void(0)',['class'=>'pause','data-url'=>\yii\helpers\Url::to(['pause','name'=>$queue->name])]);?>
<?= \yii\bootstrap\Html::a('Resume ','javascript:void(0)',['class'=>'resume','data-url'=>\yii\helpers\Url::to(['resume','name'=>$queue->name])]);?>
<?php if($lastBuried):?>
    <div>
        <div class="row">
            编号:<?=$lastBuried->getId();?>
        </div>
        <?=\yii\bootstrap\Html::textarea("jobData",json_encode($lastBuried->getData()))?>
    </div>
<?php endif;?>
<?php if($lastDelayed):?>
    <div>
        <div class="row">
            编号:<?=$lastDelayed->getId();?>

        </div>
        <?=\yii\bootstrap\Html::textarea("jobData",json_encode($lastDelayed->getData()))?>
    </div>
<?php endif;?>
<?php if($lastReady):?>
    <div>
        <div class="row">
            编号:<?=$lastReady->getId();?>
        </div>
        <?=\yii\bootstrap\Html::textarea("jobData",json_encode($lastReady->getData()))?>
    </div>
<?php endif;?>
<?php
$this->registerJs(
    "    
        $(document).on(\"click\",\".btn_kick\",function() {
            $.get($(this).attr(\"data-url\"),
                function (data) {
                alert('kicked '+data);
                }
            );
        });
        $(document).on(\"click\",\".del_job\",function() {
            if(window.confirm('确定删除Job？')){
                $.get($(this).attr(\"data-url\"),
                    function (data) {
                    if(data==false){
                        alert('fail');
                        return false;
                    }
                    alert('delete job success');
                    }
                );
            }
        });
        $(document).on(\"click\",\".del_buried\",function() {
            if(window.confirm('确定删除All Buried？')){
                $.get($(this).attr(\"data-url\"),
                    function (data) {
                    
                    }
                );
                $('.close').click();
            }
        });
        $(document).on(\"click\",\".pause\",function() {
            $.get($(this).attr(\"data-url\"),
                function (data) {
                alert('pause success');
                }
            );
        });
        $(document).on(\"click\",\".resume\",function() {
            $.get($(this).attr(\"data-url\"),
                function (data) {
                alert('resume success');
                }
            );
        });
    "
);
?>
