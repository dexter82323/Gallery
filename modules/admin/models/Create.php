<?php
namespace app\modules\admin\models;
use yii\base\Model;

class Create extends Model{
    public $title;
    public $description;
    public $category;
    public $path;


    public function rules(){
        return [
            [['title','description','category','path'],'required'],
            ['path','file'],
        ];
    }

    public function attributeLabels()
    {
        return [
            'title' => 'Название',
            'description' => 'Описание',
            'category' => 'Категория',
            'path' => 'Файл',
        ];
    }
}