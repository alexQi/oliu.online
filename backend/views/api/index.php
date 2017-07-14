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

<!--    <h1>--><?php //echo Html::encode($this->title) ?><!--</h1>-->
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <p>
        <?= Html::a('Create Api Base', ['create'], ['class' => 'btn btn-success']) ?>
    </p>
    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'options' => [
            'style'=>'overflow: auto; word-wrap: break-word;'
        ],
        'columns' => [
            'id',
            'api_name',
            'status',
            [
                'attribute'=>'created_at',
                'value'=>function ($model) {
                    return date('Y-m-d H:i:s',$model->created_at);
                },
            ],
            'is_default',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>
</div>
