<?php
/**
 * Created by PhpStorm.
 * User: alex
 * Date: 17-7-17
 * Time: 下午5:40
 */
namespace common\models;

use common\models\service\MessageService;
use Yii;
use yii\base\Model;

class Mail extends Model
{
    /**
     * @param $param
     * @return bool
     */
    public function SendMail($param)
    {
        $MessageService = new MessageService();
        $param['from_user_id'] = 3;
        $param['created_at'] = time();
        $param['updated_at'] = time();
        if ($MessageService->saveMessage($param))
        {
            $mail= Yii::$app->mailer->compose();
            $mail->setFrom($param['from']);
            $mail->setTo($param['to']);
            $mail->setSubject($param['title']);
            $mail->setHtmlBody($param['content']);
            return $mail->send();
        }else{
            return false;
        }
    }
}