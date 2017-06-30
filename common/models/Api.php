<?php
/**
 * Created by PhpStorm.
 * User: alex
 * Date: 17-6-25
 * Time: 下午12:25
 */

namespace common\models;

use common\components\Common;
use yii;
use yii\base\Model;
use common\models\service\ApiBaseService;

class Api extends Model{

    public $queryParam;

    public function run(){
        $ApiBase = new ApiBaseService();
        $apiInfo = $ApiBase->getApi($this->queryParam);

        if (empty($api)){
            $this->queryParam['isDefault'] = 2;
            $apiInfo = $ApiBase->getApi($this->queryParam['isDefault']);
        }

        $param['url']    = $apiInfo['url'].$apiInfo['url_path'];
        $param['method'] = $apiInfo['request_method'];
        $param['query_string'] = array(
            $apiInfo['query_string']=>$this->queryParam['queryString'],
        );
        $param['header'] = ["Authorization:APPCODE ".yii::$app->params['aliyun']['AppCode']];

        return $this->invokeApi($param);
    }

    /**
     * invoke api to get infomations
     *
     * @param  array  $param['query_string'] -> array
     * @return string
     */
    public function invokeApi($param)
    {
        $content = Common::httpRequest($param['url'],$param['query_string'],$param['method'],$param['header']);
        return json_decode($content);
    }
}