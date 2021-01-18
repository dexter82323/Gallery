<?php
namespace app\models;
use yii\base\Model;

class Filter extends Model{
    public $id;
    public $title;
    public $category;

    public function rules(){
        return [
            [['id','title','category'],'safe'],
        ];
    }
}