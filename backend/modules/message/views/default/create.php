<?php
use yii\helpers\Url;
use backend\assets\AdminLtePluginsWysiHtml5Asset;

/* @var $this yii\web\View */

$this->title = '新消息';
$this->params['breadcrumbs'][] = ['label' => Yii::t('app', 'Messages'), 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;

AdminLtePluginsWysiHtml5Asset::register($this);
?>
<div class="row">
    <?php echo $this->render('message-menu'); ?>
    <!-- /.col -->
    <div class="col-md-9">
        <div class="box box-primary">
            <div class="box-header with-border">
                <h3 class="box-title">New Message</h3>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
                <div class="form-group">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="fa fa-envelope"></i></span>
                        <input class="form-control mail-to" placeholder="To:">
                    </div>
                </div>
                <div class="form-group">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="fa fa-header"></i></span>
                        <input class="form-control mail-title" placeholder="Subject:">
                    </div>
                </div>
                <div class="form-group">
                    <textarea id="compose-textarea" class="form-control mail-content" style="height: 300px"></textarea>
                </div>
                <div class="form-group">
                    <div class="btn btn-default btn-file">
                        <i class="fa fa-paperclip"></i> 附件
                        <input type="file" name="attachment">
                    </div>
                    <p class="help-block">Max. 2MB</p>
                </div>
            </div>
            <!-- /.box-body -->
            <div class="box-footer">
                <div class="pull-right">
                    <button type="button" class="btn btn-default save_mail"><i class="fa fa-pencil"></i> 存草稿</button>
                    <button type="submit" class="btn btn-primary send_mail"><i class="fa fa-envelope-o"></i> 发送</button>
                </div>
                <button type="reset" class="btn btn-default discard"><i class="fa fa-times"></i> 放弃</button>
            </div>
            <!-- /.box-footer -->
        </div>
        <!-- /. box -->
    </div>
    <!-- /.col -->
</div>
<!-- /.row -->
<script>
    $(function () {
        //Add text editor
        $("#compose-textarea").wysihtml5();

        $(".discard").click(function(){
            bootbox.confirm(
                {
                    title  : '<i class="fa fa-warning text-red"></i> 提示',
                    message: '所有修改内容将全部丢失，确定放弃？',
                    buttons: {
                        confirm: {
                            label: "确定"
                        },
                        cancel: {
                            label: "取消"
                        }
                    },
                    callback: function (confirmed) {
                        if (confirmed){
                            window.location.href = "<?php echo Url::to(['index'])?>";
                        }
                    }
                }
            );
        });

        $('.save_mail').click(function () {
            var status = 3;
            HandleData(status);
        });

        $('.send_mail').click(function () {
            var status = 2;
            HandleData(status);
        });

        function HandleData(status) {
            var id           = "<?php echo $model->id?>";
            var mail_to      = $('.mail-to').val();
            var mail_title   = $('.mail-title').val();
            var mail_content = $('.mail-content').val();

            var url = '<?php echo Url::to(['/ajax/message/deal-mail']);?>';
            var param = {id:id,to:mail_to,title:mail_title,content:mail_content,status:status};

            $.post(url,param,function (result) {
                console.log(result);
            },'json');
        }
    });
</script>

