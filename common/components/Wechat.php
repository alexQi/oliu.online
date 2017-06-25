<?php
/**
 * Created by PhpStorm.
 * User: alex
 * Date: 17-6-25
 * Time: 上午11:37
 */

namespace common\components;


class Wechat
{
    public function __construct()
    {
        //...
    }

    public function valid()

    {
        $echoStr = $_GET["echostr"];
        if($this->checkSignature()){
            return $echoStr;
        }
    }

    private function checkSignature()
    {
        if (!defined("TOKEN")) {
            throw new Exception('TOKEN is not defined!');
        }

        $signature = $_GET["signature"];
        $timestamp = $_GET["timestamp"];
        $nonce = $_GET["nonce"];

        $token = TOKEN;
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
}