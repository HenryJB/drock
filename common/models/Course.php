<?php

namespace common\models;


use Yii;
use common\models\CoursesCategory;
/**
 * This is the model class for table "courses".
 *
 * @property int $id
 * @property int $course_category
 * @property string $name
 * @property string $description
 *
 * @property CoursesCategories $courseCategory
 */
class Course extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'courses';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['course_category', 'name'], 'required'],
            [['course_category'], 'integer'],
            [['description'], 'string'],
            [['name'], 'string', 'max' => 255],
            [['name'], 'unique'],
            [['course_category'], 'exist', 'skipOnError' => true, 'targetClass' => CoursesCategory::className(), 'targetAttribute' => ['course_category' => 'id']],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'course_category' => 'Course Category',
            'name' => 'Name',
            'description' => 'Description',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getCourseCategory()
    {
        return $this->hasOne(CoursesCategories::className(), ['id' => 'course_category']);
    }
}
