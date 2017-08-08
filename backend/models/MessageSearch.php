<?php

namespace app\models;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use yii\data\Pagination;
use common\models\Message;
use common\models\User;

/**
 * MessageSearch represents the model behind the search form about `app\models\Message`.
 */
class MessageSearch extends Message
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['id', 'created_at', 'updated_at', 'type'], 'integer'],
            [['title', 'from', 'to', 'content'], 'safe'],
        ];
    }

    /**
     * @inheritdoc
     */
    public function scenarios()
    {
        // bypass scenarios() implementation in the parent class
        return Model::scenarios();
    }

    /**
     * Creates data provider instance with search query applied
     *
     * @param array $params
     *
     * @return ActiveDataProvider
     */
    public function search($params)
    {

        $params['type']   = isset($params['type']) && $params['type'] ? $params['type'] : 1;
        $params['is_del'] = isset($params['is_del']) && $params['is_del'] ? $params['is_del'] : 1;
        $params['status'] = isset($params['status']) && $params['status'] ? $params['status'] : 2;

        $query = Message::find();
        $query->select('user.username,msg.*');
        $query->from(['msg'=>Message::tableName()]);
        $query->leftJoin(['user'=>User::tableName()],'msg.from_user_id=user.id');

        $query->where(['msg.type'=>$params['type']]);

        $query->andWhere(['msg.is_del'=>$params['is_del']]);

        $query->andWhere(['msg.status'=>$params['status']]);

        if (isset($params['keyword']) && $params['keyword']!='')
        {
            $query->andFilterWhere(['or',
                ['like', 'title', $params['keyword']],
                ['like', 'from', $params['keyword']],
                ['like', 'to', $params['keyword']],
                ['like', 'content', $params['keyword']]
            ]);
        }

        $result['page'] = new Pagination(['totalCount' =>$query->count(), 'pageSize' => '20']);
        $result['list'] = $query->offset($result['page']->offset)
            ->limit($result['page']->limit)
            ->asArray()
            ->all();

        return $result;
    }
}
