<?php
$params = array_merge(
    require(__DIR__ . '/../../common/config/params.php'),
    require(__DIR__ . '/../../common/config/params-local.php'),
    require(__DIR__ . '/params.php'),
    require(__DIR__ . '/params-local.php')
);

return [
    'id' => 'app-socketService',
    'basePath' => dirname(__DIR__),
    'bootstrap' => ['log'],
    'controllerNamespace' => 'socket\controllers',
    'controllerMap' => [
        'fixture' => [
            'class' => 'yii\socket\controllers\FixtureController',
            'namespace' => 'common\fixtures',
          ],
        'worker'=>[
            'class' => 'socket\controllers\WorkerController',
        ],
        'cons'=>[
            'class' => 'socket\controllers\ConsController',
        ]

    ],
    'components' => [
        'log' => [
            'targets' => [
                [
                    'class' => 'yii\log\FileTarget',
                    'levels' => ['error', 'warning'],
                ],
            ],
        ],
    ],
    'params' => $params,
];
