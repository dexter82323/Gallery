<?php

namespace app\modules\admin\controllers;

use app\models\Picture;
use Yii;
use yii\filters\AccessControl;
use yii\web\Controller;
use yii\web\Response;
use yii\filters\VerbFilter;
use app\modules\admin\models\Create;
use yii\web\UploadedFile;
use app\models\File;

/**
 * Default controller for the `admin` module
 */
class DefaultController extends AppAdminController
{
    /**
     * Renders the index view for the module
     * @return string
     */
    public function actionIndex()
    {
        return $this->render('index');
    }

    public function actionCrud(){
        return $this->render('crud');
    }

    public function actionCreate()
    {
        $model = new Create;
        if ($model->load(Yii::$app->request->post())) {
            $_FILES["Create"]["name"]["path"] ? $model->path = UploadedFile::getInstance($model, 'path') : " ";
            if ($model->path && $model->validate()) {
                $file = new File();
                $picture = new Picture();
                $model->path->saveAs(Yii::getAlias('@app/web/images/' . $model->path->baseName . '.' . $model->path->extension));
                $file->title = $model->title;
                $file->path = "images/" . $model->path->baseName . '.' . $model->path->extension;
                $file->save();
                $picture->title = $model->title;
                $picture->description = $model->description;
                $picture->category = $model->category;
                $picture->id_file = $file->id;
                $picture->save();
                return $this->redirect('/gallery/web/gallery/gallery');
            }
        }
        return $this->render('create', compact('model'));
    }

}
