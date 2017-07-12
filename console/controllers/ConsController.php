<?php
/**
 * Created by PhpStorm.
 * User: alex
 * Date: 17-7-12
 * Time: 下午5:00
 */
namespace console\controllers;

use udokmeci\yii2beanstalk\Beanstalk;
use yii;
use yii\console\Controller;

class ConsController extends Controller
{
    public function actionHandleData()
    {
        $beanstalk = new Beanstalk();
        $beanstalk->useTube('oliu.handleData');
        $beanstalk->watch('oliu.handleData');

        while (true){
            $job  = $beanstalk->reserve();
            $data = $job->getData();
            var_dump($data);
            if ($data){
                $beanstalk->release($job,5,10);
            }else{
                $beanstalk->release($job,5,10);
            }
        }
    }
}