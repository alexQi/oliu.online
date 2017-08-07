<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model app\models\MessageGroup */

$this->title = Yii::t('app', 'Create Message Group');
$this->params['breadcrumbs'][] = ['label' => Yii::t('app', 'Message Groups'), 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="message-group-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
