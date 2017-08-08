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

    public static $STATUSLIST = [
        '待发送' => 1,
        '已发送' => 2,
        '暂不发送' => 3,
    ];
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
        $query = Message::find();
        $query->select('user.username,msg.*');
        $query->from(['msg'=>Message::tableName()]);
        $query->leftJoin(['user'=>User::tableName()],'msg.from_user_id=user.id');

        $query->where(['msg.type'=>$params['type']]);

        if ($params['folder']==1)
        {
            $query->andWhere(['msg.status'=>$params['status']]);
            $query->andWhere(['msg.is_del'=>1]);

        }elseif($params['folder']==2)
        {
            $query->andWhere(['msg.type'=>false]);

        }elseif($params['folder']==3)
        {
            $query->andWhere(['in','msg.status',[1,3]]);
            $query->andWhere(['msg.is_del'=>1]);

        }elseif($params['folder']==4)
        {
            $query->andWhere(['msg.is_del'=>2]);
        }

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
