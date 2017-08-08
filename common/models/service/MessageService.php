<?php
namespace common\models\service;

use common\models\Message;

class MessageService extends Message
{
    public function saveMessage($param)
    {
        $this->title = $param['title'];
        $this->from_user_id = $param['from_user_id'];
        $this->from = key($param['from']);
        $this->to = $param['to'];
        $this->content = $param['content'];
        $this->created_at = $param['created_at'];
        $this->updated_at = $param['updated_at'];

        return $this->save();
    }
}