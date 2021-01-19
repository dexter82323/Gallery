<?php


namespace app\controllers;

use yii\rest\ActiveController;
use Yii;

class RestController extends ActiveController
{
    public $serializer = [
        'class' => 'yii\rest\Serializer',
        'collectionEnvelope' => 'items',
    ];

    public function checkAccess($action, $model = null, $params = [])
    {
        if ($action === 'create' || $action === 'update' || $action === 'delete') {
            if (Yii::$app->user->isGuest)
                throw new \yii\web\ForbiddenHttpException(sprintf('Access denied.', $action));
        }
    }
}