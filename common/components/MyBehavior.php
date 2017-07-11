<?php
/**
 * Created by PhpStorm.
 * User: alex
 * Date: 17-7-11
 * Time: 下午5:30
 */
namespace common\components;

use yii;
use yii\base\Behavior;
use yii\helpers\ArrayHelper;

class MyBehavior Extends Behavior
{
    public $queryParams;

    public function handleRequest(){

        $PostData = yii::$app->request->get();
        $GetData  = yii::$app->request->post();

        $this->queryParams = ArrayHelper::merge($PostData,$GetData);
    }

    public function events()
    {
        $this->EVENT;
    }
}