<?php

use yii\helpers\Html;
use yii\helpers\Json;
use backend\modules\admin\AnimateAsset;
use yii\web\YiiAsset;

/* @var $this yii\web\View */
/* @var $mailList [] */

$this->title = Yii::t('app', 'Create Message Group');
$this->params['breadcrumbs'][] = ['label' => Yii::t('app', 'Message Groups'), 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;

AnimateAsset::register($this);
YiiAsset::register($this);
$opts = Json::htmlEncode([
    'mailList' => $mailList
]);
$this->registerJs("var _opts = {$opts};");
$this->registerJs($this->render('_script.js'));
$animateIcon = ' <i class="glyphicon glyphicon-refresh glyphicon-refresh-animate"></i>';
?>
<!-- <h1><?= Html::encode($this->title) ?></h1> -->
<div class="row">
    <div class="col-xs-12">
        <div class="box box-info">
            <div class="box-header with-border">
                <h3 class="box-title"><?= Html::encode($this->title) ?></h3>
            </div>
            <div class="box-body">
                <div class="row">
                    <div class="col-sm-11">
                        <div class="input-group">
                            <input id="inp-route" type="text" class="form-control"
                                   placeholder="new email(s)">
                            <span class="input-group-btn">
                                <?= Html::a(Yii::t('app', 'create') . $animateIcon, ['create'], [
                                    'class' => 'btn btn-success',
                                    'id' => 'btn-new'
                                ]) ?>
                            </span>
                        </div>
                    </div>
                </div>
                <p>&nbsp;</p>
                <div class="row">
                    <div class="col-sm-5">
                        <div class="input-group">
                            <input class="form-control search" data-target="avaliable"
                                   placeholder="Search for avaliable">
                            <span class="input-group-btn">
                                <?= Html::a('<span class="glyphicon glyphicon-refresh"></span>', ['refresh'], [
                                    'class' => 'btn btn-default',
                                    'id' => 'btn-refresh'
                                ]) ?>
                            </span>
                        </div>
                        <select multiple size="30" class="form-control list" data-target="avaliable"></select>
                    </div>
                    <div class="col-sm-1">
                        <br><br>
                        <?= Html::a('&gt;&gt;' . $animateIcon, ['assign'], [
                            'class' => 'btn btn-success btn-assign',
                            'data-target' => 'avaliable',
                            'title' => 'Assign'
                        ]) ?><br><br>
                        <?= Html::a('&lt;&lt;' . $animateIcon, ['remove'], [
                            'class' => 'btn btn-danger btn-assign',
                            'data-target' => 'assigned',
                            'title' => 'Remove'
                        ]) ?>
                    </div>
                    <div class="col-sm-5">
                        <input class="form-control search" data-target="assigned"
                               placeholder="Search for assigned">
                        <select multiple size="30" class="form-control list" data-target="assigned"></select>
                    </div>
                </div>
            </div>
            <div class="box-footer">
                <p>&nbsp;</p>
            </div>
        </div>
    </div>
</div>
