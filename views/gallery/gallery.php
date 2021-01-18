<?php

use yii\helpers\Html;
use yii\widgets\LinkPager;
use yii\widgets\ActiveForm;

?>

<p align="center" style="font-size: 28px">Галерея:</p>
<div class="container">
    <div class="row">
        <div class="col-sm-6">
            <?php $form = ActiveForm::begin(['action' => 'gallery?page=1']) ?>
            <?= $form->field($category, 'category')->dropDownList($items, ['prompt' => 'All', 'style' => 'width:500px;border: 1px solid #337ab7;margin-left:200px'])->label('Выберите категорию', ['style' => 'color:#337ab7;margin-left:200px']),
            Html::submitButton('Поиск', array('class' => 'btn btn-primary', 'style' => 'margin-left:200px')) ?>
            <?php ActiveForm::end() ?>
        </div>
        <div class="col-sm-6" style="width: 200px; float: right">
            <?php if (!Yii::$app->user->isGuest): ?>
                <?php echo Html::a(' Добавить картинку ', ['/admin/default/create'], ['class' => 'btn btn-primary   btn-block  active ']) ?>
            <?php endif ?>
        </div>
    </div>
</div>
<br>
<div class="container">
    <div class="row" align="center">
        <div class="col-sm-4" align="center">
            <?php $form = ActiveForm::begin(['action' => 'gallery?page=1']) ?>
            <?= $form->field($filter, 'id')->label("Фильтр по ID") ?>
        </div>
        <div class="col-sm-4" align="center">
            <?= $form->field($filter, 'title')->label("Фильтр по имени") ?>
        </div>
        <div class="col-sm-4" align="center">
            <?= $form->field($filter, 'category')->label("Фильтр по категории") ?>
        </div>
        <?= Html::submitButton('Фильтровать', array('class' => 'btn btn-primary', 'style' => '')) ?>
        <?php ActiveForm::end() ?>
    </div>
</div>
<br>
<br>
<br>
<div class="container">
    <div class="row">
        <?php foreach ($query as $picture): ?>
            <div class="col-sm-4" style="text-align: center;">
                <strong><?= $picture->id ?><br></strong>
                <strong><?= $picture->title ?><br></strong>
                <?= $picture->description ?><br>
                <?= $picture->category ?><br>
                <div class="wrapper exmpl">
                    <img src="../<?= $picture->file->path ?>">
                </div>
                <br>
                <br>
                <br>
            </div>
        <?php endforeach ?>
    </div>
</div>
<?= LinkPager::widget(['pagination' => $pagination]) ?>


