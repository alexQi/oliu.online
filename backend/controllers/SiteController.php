<?php
namespace backend\controllers;

use Yii;
use yii\web\Controller;
use yii\filters\VerbFilter;
use yii\filters\AccessControl;
use common\models\LoginForm;
use yii\data\ArrayDataProvider;

/**
 * Site controller
 */
class SiteController extends Controller
{
    /**
     * @inheritdoc
     */
    public function behaviors()
    {
        return [
            'access' => [
                'class' => AccessControl::className(),
                'rules' => [
                    [
                        'actions' => ['login', 'error'],
                        'allow' => true,
                    ],
                    [
                        'actions' => ['logout', 'index','flush-cache'],
                        'allow' => true,
                        'roles' => ['@'],
                    ],
                ],
            ],
            'verbs' => [
                'class' => VerbFilter::className(),
                'actions' => [
                    'logout' => ['post'],
                ],
            ],
        ];
    }

    /**
     * @inheritdoc
     */
    public function actions()
    {
        return [
            'error' => [
                'class' => 'yii\web\ErrorAction',
            ],
        ];
    }

    /**
     * Displays homepage.
     *
     * @return string
     */
    public function actionIndex()
    {
        $query = Yii::$app->db->createCommand('show processlist');
        $mysqlStatus = $query->queryAll();

        $queue = yii::$app->beanstalk;
        $tubes = $queue->listTubes();
        $list  = [];
        foreach ($tubes as $key=>$val)
        {
            $list[] = $queue->statsTube($val);
        }

        $mysqlInfo = new ArrayDataProvider(
            [
                'allModels'  => $mysqlStatus,
                'sort'       => [
                    'attributes' => ['Id', 'User', 'Time', 'State', 'State'],
                ],
                'pagination' => ['pageSize' => 15],
            ]
        );

        $dataProvider = new ArrayDataProvider(
            [
                'allModels'  => $list,
                'sort'       => [
                    'attributes' => ['name', 'total-jobs', 'current-jobs-buried', 'current-jobs-delayed'],
                ],
                'pagination' => ['pageSize' => 15],
            ]
        );

        return $this->render('index',[
            'mysqlInfo'    => $mysqlInfo,
            'dataProvider' => $dataProvider
        ]);
    }

    public function actionFlushCache(){
        Yii::$app->cache->flush();
        return $this->goHome();
    }

    /**
     * Login action.
     *
     * @return string
     */
    public function actionLogin()
    {
        if (!Yii::$app->user->isGuest) {
            return $this->goHome();
        }

        $model = new LoginForm();
        if ($model->load(Yii::$app->request->post()) && $model->login()) {
            return $this->goBack();
        } else {
            return $this->render('login', [
                'model' => $model,
            ]);
        }
    }

    /**
     * Logout action.
     *
     * @return string
     */
    public function actionLogout()
    {
        Yii::$app->user->logout();

        return $this->goHome();
    }
}
