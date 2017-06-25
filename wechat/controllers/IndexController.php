<?php
namespace wechat\controllers;

use wechat\models\Api;
use Yii;
use yii\base\Controller;
use common\components\Common;
use wechat\models\Wechat;

/**
 * Index controller
 */
class IndexController extends Controller
{
    public function actionIndex(){
        $wechat = new Wechat();

        if($wechat->getMsg()){
            echo $wechat->sendMsg();
        }
    }

    public function actionTest(){
        var_dump(Api::robot('天气'));
    }

}
