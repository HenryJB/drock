<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use yii\helpers\ArrayHelper;
use common\models\Alumni;


/* @var $this yii\web\View */
/* @var $model common\models\AlumniProject */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="alumni-project-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'alumni_id')->dropDownList(
        ArrayHelper::map(Alumni::find()

            ->groupBy('id')
            ->all(),
            'id',
            'id'
        ),
        ['prompt' => 'Please select',
            'onchange'=>'
                       $.post( "'.Yii::$app->urlManager->createUrl('alumni/related-states?id=').'"+$(this).val(), function( data ) {
                         $( "select#id" ).html( data );
                      });

                 ']);
    ?>

    <?= $form->field($model, 'title')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'description')->textarea(['rows' => 6]) ?>

    <?= $form->field($model, 'attachment')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'date')->textInput() ?>

    <div class="form-group">
        <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
