<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "{{%api_base}}".
 *
 * @property integer $id
 * @property string $api_name
 * @property string $url
 * @property string $url_path
 * @property string $request_method
 * @property string $query_string
 * @property string $invoke_string
 * @property integer $status
 * @property integer $created_at
 * @property string $updated_at
 */
class ApiBase extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return '{{%api_base}}';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['api_name'], 'required'],
            [['status', 'created_at'], 'integer'],
            [['api_name', 'url', 'url_path', 'updated_at'], 'string', 'max' => 100],
            [['request_method'], 'string', 'max' => 10],
            [['query_string'], 'string', 'max' => 50],
            [['invoke_string'], 'string', 'max' => 255],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'api_name' => 'Api Name',
            'url' => 'Url',
            'url_path' => 'Url Path',
            'request_method' => 'Request Method',
            'query_string' => 'Query String',
            'invoke_string' => 'Invoke String',
            'status' => 'Status',
            'created_at' => 'Created At',
            'updated_at' => 'Updated At',
        ];
    }
}
