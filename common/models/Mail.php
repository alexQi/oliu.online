<?php
/**
 * Created by PhpStorm.
 * User: alex
 * Date: 17-7-17
 * Time: 下午5:40
 */
namespace common\models;

use Yii;
use yii\base\Model;

class Mail extends Model
{
    public $msg;
    /**
     * @return bool
     */
    public function SendMail($param)
    {
        $api = new Api();
        $api->queryParam['queryString'] = '杭州天气';

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

        $mail= Yii::$app->mailer->compose();
        $mail->setFrom($param['from']);
        $mail->setTo($param['to']);
        $mail->setSubject("天气预报");
        $mail->setHtmlBody($this->msg);
        return $mail->send();
    }
}