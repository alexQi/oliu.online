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
    public $msg;
    public $tpl;

    public function valid()

    {
        $echoStr = $_GET["echostr"];
        if($this->checkSignature()){
            return $echoStr;
        }else{
            return false;
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
        var_dump(yii::$app->params);die();
        $fileContent = file_get_contents("php://input");
        libxml_disable_entity_loader(true);
        $data = simplexml_load_string($fileContent, 'SimpleXMLElement', LIBXML_NOCDATA);
        $data = json_encode($data);

        yii::info($data,'wechat.message');

        $data = json_decode($data, true);
        $this->data    = $data;
        $this->msgType = strtolower($this->data['MsgType']);
        $this->responMsg();
    }

    public function responMsg(){
        switch ($this->msgType){
            case 'event':
                if ($this->data['Event']=='subscribe')
                {
                    $this->msg = 'welcome to alex\'shome';

                }else if ($this->data['Event']=='unsubscribe')
                {
                    #取消关注 不做处理
                    //........
                }
                break;
            case 'text':
                if ($this->data['Content']=='天气'){
                    $this->msg = '今天天气很好';
                }
                break;
            case 'image':
                #....
                break;
            case 'voice':
                #....
                break;
            case 'video':
                #....
                break;
            case 'location':
                //..
                break;
            case 'link':
                //..
                break;
            default:
                break;
        }

        $this->msgType == 'event' ? 'text':$this->msgType;
        $this->tpl = yii::$app->params['wechat']['tpl'][$this->msgType];
    }

    public function sendMsg(){
        $result = sprintf($this->tpl, $this->data['FromUserName'], $this->data['ToUserName'], time(), $this->msg);
        return $result;
    }


}