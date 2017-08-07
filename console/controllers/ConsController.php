<?php
/**
 * Created by PhpStorm.
 * User: alex
 * Date: 17-7-12
 * Time: 下午5:00
 */
namespace console\controllers;

use yii;
use yii\console\Controller;
use yii\base\Exception;
use common\components\yii2beanstalk\Beanstalk;
use common\models\Mail;
use common\models\Api;

class ConsController extends Controller
{

    public function actionIndex()
    {
        $beanstalk = new Beanstalk();
        $beanstalk->useTube('oliu.sendEmail');
        $beanstalk->watch('oliu.sendEmail');

        //初始化Api
        $api = new Api();
        $api->queryParam['queryString'] = '杭州天气';

        $api->getApiInfo();
        while (true){
            $job  = $beanstalk->reserve();
            try{
                $data = $job->getData();

                $data = json_encode($data);
                if (!$data)
                {
                    continue;
                }
                $mail = new Mail();

                $param = json_decode($data,true);
                $param['title'] = $api->queryParam['queryString'];
                $param['msg']   = $api->run();


                $res = $mail->SendMail($param);
                if (!$res){
                    throw new Exception('发送失败');
                }
                $beanstalk->delete($job);
            }catch (Exception $e)
            {
                $beanstalk->release($job,5,10);
                echo $e->getMessage();
            }
        }
    }

    public function actionInvokeWork(){
        $beanstalk = new Beanstalk();
        $beanstalk->useTube('oliu.sendEmail');
        $param['from'] = [yii::$app->params['adminEmail']=>'Alex'];
        $param['to']   = yii::$app->params['adminEmail'];

        $put = $beanstalk->put(json_encode($param));

        if (!$put){
            exit($put);
        }
    }

    public function actionDeleteAll(){
        $beanstalk = new Beanstalk();
        $beanstalk->useTube('oliu.sendEmail');
        $beanstalk->watch('oliu.sendEmail');

        while (true){
            $job  = $beanstalk->reserve();
            $beanstalk->delete($job);
        }
    }
}