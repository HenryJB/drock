<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "alumni_project".
 *
 * @property int $id
 * @property int $alumni_id
 * @property string $title
 * @property string $description
 * @property string $attachment
 * @property string $date
 */
class AlumniProject extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'alumni_project';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['alumni_id'], 'integer'],
            [['description'], 'string'],
            [['date'], 'safe'],
            [['title', 'attachment'], 'string', 'max' => 250],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'alumni_id' => 'Alumni ID',
            'title' => 'Title',
            'description' => 'Description',
            'attachment' => 'Attachment',
            'date' => 'Date',
        ];
    }
}
