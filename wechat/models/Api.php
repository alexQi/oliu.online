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
use common\components\Common;

class Api extends Model{

    public static function robot($question){
        $host = "http://jisuznwd.market.alicloudapi.com";
        $path = "/iqa/query";
        $appcode = "234ca6323b9445f9b54f5b4aeda08deb";
        $headers = array();
        array_push($headers, "Authorization:APPCODE " . $appcode);
        $querys = "question=".$question;
        $url = $host . $path . "?" . $querys;

        $content = Common::httpRequest($url,'','get',$headers);
        return json_decode($content);
    }
}