<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel app\models\AdminLogSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Admin Logs';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="admin-log-index">
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            'id',
            'route',
            'table_name',
            'operation_type',
            'description:ntext',
            [
                'attribute'=>'created_at',
                'format'=>['date', 'php:Y-m-d H:i:s']
            ],
            // 'user_id',
        ],
    ]); ?>
</div>
