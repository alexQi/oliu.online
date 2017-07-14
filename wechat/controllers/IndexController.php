<?php
namespace wechat\controllers;

use yii;
use yii\base\Controller;
use common\models\Api;
use wechat\models\Wechat;

/**
 * Index controller
 */
class IndexController extends Controller
{
    public $api;

    public function init()
    {
        parent::init(); // TODO: 继承父类构造方法
        $this->api = new Api();
        $this->api->queryParam['queryString'] = yii::$app->request->get('query_string');
    }

    public function actionIndex()
    {
        $wechat = new Wechat();

        if($wechat->getMsg()){
            echo $wechat->sendMsg();
        }
    }

    public function actionTest()
    {
        $response = $this->api->run();
        $msg    = $response->result->content;

        $realMsg = preg_replace("/\[/",'<',$msg);
        $realMsg = preg_replace("/\]/",'>',$realMsg);
        $realMsg = preg_replace("/(link)/",'a',$realMsg);
        $realMsg = preg_replace("/(url)/",'href',$realMsg);
    }

    public function actionDemo(){

    }


}
