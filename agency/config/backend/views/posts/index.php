<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Blogs';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="blog-index">

  <!-- Start Page Content -->
  <div class="row">
      <div class="col-12">
          <div class="card">
              <div class="card-body">

                <h3><?= Html::encode($this->title) ?></h3>

                <p>
                    <?= Html::a('Create Blog', ['create'], ['class' => 'btn btn-success']) ?>
                </p>

                <?= GridView::widget([
                    'dataProvider' => $dataProvider,
                    'columns' => [
                        ['class' => 'yii\grid\SerialColumn'],
                        'title',
                        'post:ntext',
                        'photo',
                        'author',
                        'date',
                        ['class' => 'yii\grid\ActionColumn'],
                    ],
                ]); ?>

                 </div>
              </div>
          </div>
      </div>
</div>
