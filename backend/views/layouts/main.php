<?php
use yii\helpers\Html;

/* @var $this \yii\web\View */
/* @var $content string */


if (Yii::$app->controller->action->id === 'login') {
    /**
     * Do not use this code in your template. Remove it.
     * Instead, use the code  $this->layout = '//main-login'; in your controller.
     */
    echo $this->render(
        'main-login',
        ['content' => $content]
    );
} else {

    if (class_exists('backend\assets\AppAsset')) {
        backend\assets\AppAsset::register($this);
    }

    dmstr\web\AdminLteAsset::register($this);

    $directoryAsset = Yii::$app->assetManager->getPublishedUrl('@vendor/almasaeed2010/adminlte/dist');
    ?>
    <?php $this->beginPage() ?>
    <!DOCTYPE html>
    <html lang="<?= Yii::$app->language ?>">
    <head>
        <meta charset="<?= Yii::$app->charset ?>"/>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <?= Html::csrfMetaTags() ?>
        <title><?= Html::encode($this->title) ?></title>
        <?php $this->head() ?>
    </head>
    <body class="hold-transition skin-blue sidebar-mini">
    <?php $this->beginBody() ?>
    <div class="wrapper">

        <?= $this->render(
            'header.php',
            ['directoryAsset' => $directoryAsset]
        ) ?>

        <?= $this->render(
            'left.php',
            ['directoryAsset' => $directoryAsset]
        )
        ?>

        <?= $this->render(
            'content.php',
            ['content' => $content, 'directoryAsset' => $directoryAsset]
        ) ?>

    </div>

    <script>
        var socket;
        var log = function(msg) {
            alert(msg);
        };
        var initWebSocket = function() {
            if (window.WebSocket) {
                socket = new WebSocket("ws://127.0.0.1:9501");
                socket.onmessage = function(event) {
                    var res = JSON.parse(event.data);
                    if (res.type=='time'){
                        $('.time-clock').html(res.data.time);
                    }

                    if (res.type=='totalNotRead'){
                        $('.message-num').html(res.data.num);
                    }

                    if (res.type=='message')
                    {
                        console.log(res.data);
                    }
                };
                socket.onopen = function(event) {
                    var userId = '<?php echo yii::$app->user->identity->id;?>';
                    var data   = {type:'init',data:{userId:userId}};
                    data = JSON.stringify(data);
                    socket.send(data);

                    //测试
                    var test = {type:'message',data:{fromUserId:userId,toUserId:userId,content:'哈哈哈哈哈哈'}};
                    test = JSON.stringify(test);
                    socket.send(test);
                };
                socket.onclose = function(event) {
                    log("Web Socket closed.");
                };
                socket.onerror = function(event) {
                    log("Web Socket error.");
                };
            } else {
                log("Your browser does not support Web Socket.");
            }
        };
        window.onload = function() {
            initWebSocket();
        }
    </script>

    <?php $this->endBody() ?>
    </body>
    </html>
    <?php $this->endPage() ?>
<?php } ?>
