<?php
/**
 * Created by PhpStorm.
 * User: alex
 * Date: 17-7-11
 * Time: 下午2:46
 */
namespace frontend\controllers;

use yii\web\Controller;
use common\components\MyBehavior;

class BaseController extends Controller
{

    public function behaviors()
    {
        $behaviors = parent::behaviors();
        $behaviors['MyBehavior'] = [
            'class' => MyBehavior::className(),
            'queryParam' => 'queryParam'
        ];

        return $behaviors;
    }

    public function init()
    {
        parent::init(); // TODO: 继承父类
    }
}