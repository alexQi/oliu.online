<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "{{%message}}".
 *
 * @property integer $id
 * @property string $title
 * @property string $from
 * @property string $to
 * @property string $content
 * @property integer $created_at
 * @property integer $updated_at
 * @property integer $type
 */
class Message extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return '{{%message}}';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['title', 'from', 'to', 'content'], 'required'],
            [['content'], 'string'],
            [['created_at', 'updated_at', 'type'], 'integer'],
            [['title', 'from', 'to'], 'string', 'max' => 50],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'title' => 'Title',
            'from' => 'From',
            'to' => 'To',
            'content' => 'Content',
            'created_at' => 'Created At',
            'updated_at' => 'Updated At',
            'type' => 'Type',
        ];
    }
}
