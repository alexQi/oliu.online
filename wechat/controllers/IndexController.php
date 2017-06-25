<?php
namespace wechat\controllers;

use Yii;
use yii\base\Controller;
use common\components\Common;

/**
 * Index controller
 */
class IndexController extends Controller
{
    public function actionIndex(){
        $fileContent = file_get_contents("php://input");
        libxml_disable_entity_loader(true);
        $data = simplexml_load_string($fileContent, 'SimpleXMLElement', LIBXML_NOCDATA);
        $data = json_encode($data);
        yii::info($data,'wechat.message');
        $data = json_decode($data, true);


    }
}
