<?php

namespace app\models;
use yii\base\Model;
class SignupForm extends Model
{
    public $username;
    public $password;
    public $email;

    public function rules() {
        return [
            [['username','password','email'], 'required', 'message' => 'Заполните поле'],
            ['username','unique','targetClass'=>User::className(),'message'=>'Этот логин уже занят'],
            ['email','unique','targetClass'=>User::className(),'message'=>'Этот email уже используется'],
            ['email','email','message'=>'Некорректный E-mail'],
        ];
    }

    public function attributeLabels() {
        return [
            'username' => 'Логин',
            'password' => 'Пароль',
            'email' => 'E-mail',
        ];
    }



}