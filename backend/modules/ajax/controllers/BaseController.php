<?php

namespace backend\modules\ajax\controllers;

use yii;
use yii\web\Controller;
use yii\web\Response;

/**
 * 公共控制器
 */
class BaseController extends Controller{

    public $enableCsrfValidation = false;

    protected $ajaxReturn = [];
    protected $postData  = [];
    protected $getData   = [];

    public function init(){
        yii::$app->response->format = Response::FORMAT_JSON;
        $this->ajaxReturn          = ['state' => 0, 'message' => '未知错误'];
        $this->postData            = Yii::$app->request->post();
        $this->getData             = Yii::$app->request->get();
    }

    public function checkUserStatus(){
        if (yii::$app->user->isGuest)
        {
            return false;
        }else{
            return true;
        }
    }

}
