<?php

namespace backend\modules\message\controllers;

use yii\web\Controller;

/**
 * Default controller for the `Message` module
 */
class Default1Controller extends Controller
{
    /**
     * Renders the index view for the module
     * @return string
     */
    public function actionIndex()
    {
        return $this->render('index');
    }

    /**
     * @return string
     */
    public function actionMessageBox()
    {
        return $this->render('message-box');
    }

    public function actionMessageGroup()
    {
        return $this->render('message-group');
    }

    public function actionAddGroup()
    {
        return $this->render('add-group');
    }
}
