<?php
namespace backend\modules\ajax\controllers;

use app\models\MessageSearch;

class MessageController extends BaseController
{

    public function actionDealMail()
    {
        if ($this->postData['status'] && in_array($this->postData['status'],MessageSearch::$STATUSLIST))
        {
            
        }else{
            $this->ajaxReturn['message'] = '邮件状态错误';
        }

        return $this->ajaxReturn;
    }
}