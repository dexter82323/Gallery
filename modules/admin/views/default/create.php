<?php

use yii\helpers\Html;
use yii\bootstrap\ActiveForm;

?>

    <div class="site-login">
        <h1>Добавить картинку</h1>
        <br>
        <?php $form = ActiveForm::begin() ?>
        <?= $form->field($model, 'title') ?>
        <?= $form->field($model, 'description') ?>
        <?= $form->field($model, 'category') ?>
        <?= $form->field($model, 'path')->fileInput() ?>
        <div class="form-group">
            <div class="col-lg-offset-1 col-lg-11">
                <?= Html::submitButton('Добавить', ['class' => 'btn btn-success']) ?>
            </div>
        </div>
    </div>
<?php ActiveForm::end() ?>