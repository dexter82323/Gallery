<?php

use yii\helpers\Html;
use yii\bootstrap\Nav;
use yii\bootstrap\NavBar;
use yii\web\UrlManager;

?>
<?php $this->title = 'Админка'; ?>
<div class="admin-default-index">
    <h1 align="center">Список таблиц</h1>
</div>
<br>
<br>
<div style="">
    <div class="col-sm-6">
        <?php echo Html::a(' Картинки ', ['/admin/picture'], ['class' => 'btn btn-primary btn-lg  btn-block  active ']) ?>
    </div>
        <div class="col-sm-6">
        <?php echo Html::a('Файлы', ['/admin/file'], ['class' => 'btn btn-primary btn-lg  btn-block  active ']) ?>
    </div>
</div>

