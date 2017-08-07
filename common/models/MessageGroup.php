<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "{{%message_group}}".
 *
 * @property integer $id
 * @property string $group_name
 * @property integer $type
 * @property string $members
 * @property integer $status
 * @property integer $created_at
 * @property integer $updated_at
 */
class MessageGroup extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return '{{%message_group}}';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['group_name'], 'required'],
            [['type', 'status', 'created_at', 'updated_at'], 'integer'],
            [['group_name'], 'string', 'max' => 45],
            [['members'], 'string', 'max' => 255],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'group_name' => 'Group Name',
            'type' => 'Type',
            'members' => 'Members',
            'status' => 'Status',
            'created_at' => 'Created At',
            'updated_at' => 'Updated At',
        ];
    }
}
