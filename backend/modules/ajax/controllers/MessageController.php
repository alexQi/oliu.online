<?php
namespace backend\modules\ajax\controllers;

use yii;
use yii\base\Exception;
use common\models\service\MessageService;
use app\models\MessageSearch;


class MessageController extends BaseController
{

    public function actionDealMail()
    {

        try {
            if (!$this->postData['status'] || !in_array($this->postData['status'],MessageSearch::$STATUSLIST))
            {
                throw new Exception('邮件状态错误');
            }

            //处理邮件
            if (isset($this->postData['id']) && $this->postData['id']!='')
            {
                $messageInfo = MessageSearch::findOne($this->postData['id']);

                if (empty($messageInfo))
                {
                    throw new Exception('未查找到ID: '.$this->postData['id'].' 的邮件');
                }

                $messageInfo->to      = $this->postData['to'];
                $messageInfo->title   = $this->postData['title'];
                $messageInfo->content = $this->postData['content'];
                $messageInfo->status  = 1;
                $messageInfo->updated_at  = time();

            }else{
                if(yii::$app->user->isGuest)
                {
                    throw new Exception('用户未登录');
                }

                $messageInfo = new MessageSearch();
                $messageInfo->title = $this->postData['title'];
                $messageInfo->from_user_id = yii::$app->user->identity->id;
                $messageInfo->from = yii::$app->user->identity->email;
                $messageInfo->to = $this->postData['to'];
                $messageInfo->content = $this->postData['content'];
                $messageInfo->created_at = time();
                $messageInfo->updated_at = time();
            }

            if (!$messageInfo->save())
            {
                throw new Exception('写入邮件内容失败');
            }

            if ($this->postData['status']==2)
            {
                //入邮件发送队列
                $data['title'] = $this->postData['title'];
                $data['from']  = [
                    $messageInfo->from => yii::$app->user->identity->username
                ];
                $data['to']      = $messageInfo->to;
                $data['content'] = $messageInfo->content;

                if (!MessageService::InToQueue(json_encode($data)))
                {
                    //更新邮件到草稿箱
                    $messageInfo->status = 3;
                    $messageInfo->save();
                    throw new Exception('发送邮件失败');
                }
            }

            $messageInfo->status = $this->postData['status'];

            if (!$messageInfo->save())
            {
                throw new Exception('修改邮件状态失败');
            }

            $this->ajaxReturn['state']   = 1;
            $this->ajaxReturn['message'] = 'sucess';
            $this->ajaxReturn['status']  = $messageInfo->status;

        }catch (Exception $e){

            $this->ajaxReturn['message'] = $e->getMessage();
        }

        return $this->ajaxReturn;
    }
}