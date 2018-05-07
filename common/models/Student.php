<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "students".
 *
 * @property int $id
 * @property string $first_name
 * @property string $last_name
 * @property string $gender
 * @property string $email_address
 * @property string $contact_address
 * @property string $occupation
 * @property string $year
 * @property string $payment_status
 * @property string $approval_status
 * @property string $country
 * @property int $state_id
 * @property string $date_of_birth
 * @property int $first_choice
 * @property int $second_choice
 * @property string $reason
 * @property string $propose_project
 * @property string $information_source
 * @property int $sponsor_aid
 * @property int $sponsorship_status
 * @property int $terms_condition
 * @property string $date_registered
 */
class Student extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'students';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['first_name', 'last_name', 'gender', 'email_address', 'contact_address', 'occupation', 'year', 'country', 'state_id', 'date_of_birth', 'first_choice', 'reason', 'propose_project','information_source',  'terms_condition', 'date_registered'], 'required'],
            [['gender', 'contact_address',  'occupation', 'payment_status', 'approval_status', 'reason', 'propose_project','information_source'], 'string'],
            [['year', 'date_of_birth', 'date_registered'], 'safe'],
            [['state_id', 'first_choice', 'second_choice', 'sponsor_aid', 'sponsorship_status', 'terms_condition'], 'integer'],
            [['first_name', 'last_name'], 'string', 'max' => 200],
            [['email_address'], 'string', 'max' => 100],
            [['country'], 'string', 'max' => 150],
            [['email_address'], 'unique'],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'first_name' => 'First Name',
            'last_name' => 'Last Name',
            'gender' => 'Gender',
            'email_address' => 'Email Address',
            'contact_address' => 'Contact Address',
            'occupation' => 'Occupation',
            'year' => 'Year',
            'payment_status' => 'Payment Status',
            'approval_status' => 'Approval Status',
            'country' => 'Country',
            'state_id' => 'State',
            'date_of_birth' => 'Date Of Birth',
            'first_choice' => 'First Choice',
            'second_choice' => 'Second Choice',
            'reason' => 'Why DCA',
            'propose_project' => 'What project will you do after DCA',
            'information_source' => 'How did you hear about us',
            'sponsor_aid' => 'Sponsor Aid',
            'sponsorship_status' => 'Sponsorship Status',
            'terms_condition' => 'Terms Condition',
            'date_registered' => 'Date Registered',
        ];
    }
}
