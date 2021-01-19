<?php


namespace app\controllers;
use yii\rest\ActiveController;

class FileController extends RestController
{
    public $modelClass = 'app\models\File';

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