<?php


namespace app\controllers;

use yii\web\Controller;
use app\models\File;
use app\models\Picture;
use yii\data\Pagination;
use yii\helpers\ArrayHelper;
use app\models\Category;
use app\models\Filter;
use Yii;

class GalleryController extends Controller
{
    public function actionGallery()
    {
        $items = ArrayHelper::map(Picture::find()->all(), 'category', 'category');
        $category = new Category();
        $filter = new Filter();
        $query = Picture::find()->with('file');
        if ($category->load(Yii::$app->request->post())) {
            $_SESSION['id'] = "";
            $_SESSION['categoryFilter'] = "";
            $_SESSION['title']="";
            $_SESSION['category']="";
            if ($category->category == "") {
                $_SESSION['category'] = "All";
                $_SESSION['count'] = $query->count();
            } else {
                $_SESSION['category'] = $category->category;
                $_SESSION['count'] = $query->where(['category' => $_SESSION['category']])->count();
            }
        }
        if ($_SESSION['category'] != "All") {
            $query = $query->andWhere(['category' => $_SESSION['category']]);
        }
        if ($filter->load(Yii::$app->request->post())) {
            $_SESSION['id'] = $filter->id;
            $_SESSION['title'] = $filter->title;
            $_SESSION['categoryFilter'] = $filter->category;
            $query = $query->andWhere(['like', 'title', $_SESSION['title']])
                           ->andWhere(['like', 'id', $_SESSION['id']])
                           ->andWhere(['like', 'category', $_SESSION['categoryFilter']]);
            $_SESSION['count'] = $query->count();
        }
        $pagination = new Pagination([
            'defaultPageSize' => 12,
            'totalCount' => $_SESSION['count'],
        ]);
        $query = $query->offset($pagination->offset)->limit($pagination->limit)->all();
        return $this->render('gallery', compact('query', 'pagination', 'category', 'items', 'filter'));
    }
}