<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "portfolios".
 *
 * @property int $id
 * @property string $title
 * @property string $description
 * @property string $date_executed
 * @property string $date
 */
class Portfolio extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'portfolios';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['title', 'description', 'date_executed', 'date'], 'required'],
            [['description'], 'string'],
            [['date_executed', 'date'], 'safe'],
            [['title'], 'string', 'max' => 200],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'title' => 'Title',
            'description' => 'Description',
            'date_executed' => 'Date Executed',
            'date' => 'Date',
        ];
    }
}
