<?php
/**
 * Created by PhpStorm.
 * User: alex
 * Date: 17-6-25
 * Time: 下午12:25
 */

namespace wechat\models;

use Yii;
use yii\base\Model;

class Wechat extends Model{

    public $data = array();
    public $msgType;

    public function valid()

    {
        $echoStr = $_GET["echostr"];
        if($this->checkSignature()){
            return $echoStr;
        }
    }

    private function checkSignature()
    {
        $signature = $_GET["signature"];
        $timestamp = $_GET["timestamp"];
        $nonce     = $_GET["nonce"];

        $token = yii::$app->params['wechat']['Token'];
        $tmpArr = array($token, $timestamp, $nonce);
        // use SORT_STRING rule
        sort($tmpArr, SORT_STRING);
        $tmpStr = implode( $tmpArr );
        $tmpStr = sha1( $tmpStr );

        if( $tmpStr == $signature ){
            return true;
        }else{
            return false;
        }
    }


    public function getMsg(){
        $fileContent = file_get_contents("php://input");
        libxml_disable_entity_loader(true);
        $data = simplexml_load_string($fileContent, 'SimpleXMLElement', LIBXML_NOCDATA);
        $data = json_encode($data);

        yii::info($data,'wechat.message');

        $data = json_decode($data, true);
        $this->data    = $data;
        $this->msgType = strtolower($this->data['MsgType']);
    }

    public function responMsg(){

    }


}