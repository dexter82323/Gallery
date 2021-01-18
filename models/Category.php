<?php
namespace app\models;
use yii\base\Model;

class Category extends Model{
    public $category;

    public function rules(){
        return [
            ['category','safe'],
        ];
    }
}