<?php
/**
 * Created by PhpStorm.
 * User: alex
 * Date: 17-7-11
 * Time: 下午2:46
 */
namespace frontend\controllers;

class ToolController extends BaseController
{
    public function actionIndex()
    {
        var_dump($this->queryParam);
    }
}