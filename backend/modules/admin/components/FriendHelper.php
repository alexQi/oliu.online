<?php
/**
 * Created by PhpStorm.
 * User: alex
 * Date: 17-8-17
 * Time: 上午9:17
 * 好友列表
 */
namespace backend\modules\admin\components;

use backend\modules\admin\models\User as UserModel;

class FriendHelper
{
    public static function getAssignedFriendList($user_id)
    {
        return UserModel::find()->where(['!=','id',$user_id])->asArray()->all();
    }
}
