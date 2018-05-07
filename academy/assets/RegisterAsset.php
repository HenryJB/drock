<?php

namespace academy\assets;

use yii\web\AssetBundle;

/**
 * Main main application asset bundle.
 */
class RegisterAsset extends AssetBundle
{
    public $basePath = '@webroot';
    public $baseUrl = '@web';
    public $css = [
      'css/register.css',
    ];
    public $js = [
      'js/lib/jquery.min.js',
      'js/lib/jquery.easing.min.js',
      'js/register.js'

    ];
    public $depends = [
        'yii\web\YiiAsset',
        'yii\bootstrap\BootstrapAsset',
    ];
}
