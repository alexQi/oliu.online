<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel common\models\ApiBaseSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Api Bases';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="api-base-index">

    <h1><?= Html::encode($this->title) ?></h1>
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <p>
        <?= Html::a('Create Api Base', ['create'], ['class' => 'btn btn-success']) ?>
    </p>
    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'id',
            'api_name',
            'url:url',
            'url_path:url',
            'request_method',
            // 'query_string',
            // 'invoke_string',
            // 'status',
            // 'created_at',
            // 'updated_at',
            // 'is_default',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>
</div>
