<?php

return [
    'components' => [
        'db' => [
            'class' => 'yii\db\Connection',
            'dsn'   => 'mysql:host=www.oliu.online;dbname=zcg;port=3306',
            'username' => 'alex',
            'password' => 'woshishei',
            'charset'  => 'utf8',
            'tablePrefix' => 'pre_',
        ],
        'mailer' => [
            'class'    => 'yii\swiftmailer\Mailer',
            'viewPath' => '@common/mail',
            // send all mails to a file by default. You have to set
            // 'useFileTransport' to false and configure a transport
            // for the mailer to send real emails.
            'useFileTransport' => true,
        ],
        'beanstalk'=>[
            'class' => 'udokmeci\yii2beanstalk\Beanstalk',
            'host'=> "127.0.0.1", // default host
            'port'=>11300, //default port
            'connectTimeout'=> 1,
            'sleep' => false, // or int for usleep after every job
        ],
    ],
];
