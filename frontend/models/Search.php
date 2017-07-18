<?php
/**
 * Created by PhpStorm.
 * User: alex
 * Date: 17-7-18
 * Time: 下午5:59
 */
namespace frontend\models;

use yii\base\Model;
use common\models\Api;

class Search extends Model
{
    public $msg = '';

    public function getTip($queryString){
        $api = new Api();
        $api->queryParam['queryString'] = $queryString;

        $responData = $api->run();

        if ($api->apiName == "Robot"){
            if ($responData->msg=='ok')
            {
                $msg = $responData->result->content;

                $realMsg = preg_replace("/\[/",'<',$msg);
                $realMsg = preg_replace("/\]/",'>',$realMsg);
                $realMsg = preg_replace("/(link)/",'a',$realMsg);
                $this->msg = preg_replace("/(url)/",'href',$realMsg);
            }
        }else if($api->apiName == "Turing"){
            switch ($responData->code)
            {
                case '100000':
                    $this->msg = $responData->text;
                    break;
                case '200000':
                    $this->msg = $responData->text;
                    $this->msg .= "<a href='$responData->url'>[详情链接]</a>";
                    break;
                default:
                    //.......
            }
        }
        return $this->msg;
    }
}