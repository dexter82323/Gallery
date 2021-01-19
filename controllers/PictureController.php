<?php


namespace app\controllers;
use app\models\Picture;
use yii\rest\ActiveController;
use yii\data\ActiveDataProvider;
class PictureController extends RestController
{
    public $modelClass = 'app\models\Picture';

    public function actions()
    {
        $actions = parent::actions();

        $actions['index']['dataFilter'] = [
            'class' => \yii\data\ActiveDataFilter::class,
            'searchModel' => $this->modelClass,
        ];

        return $actions;
    }

}