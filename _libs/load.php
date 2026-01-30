<?php declare (strict_types = 1);
session_start();
require_once 'require/Database.class.php';
require_once 'require/Poster.class.php';

function load_template($fileName){
    $filePath = "$_SERVER[DOCUMENT_ROOT]/SQLi/_templates/$fileName";
    require "$filePath";
}
$configFilePath = "$_SERVER[DOCUMENT_ROOT]/../configuration/posterconfig.json";

if(is_dir("$_SERVER[DOCUMENT_ROOT]/../configuration/") === FALSE){
        mkdir("$_SERVER[DOCUMENT_ROOT]/../configuration/");
        $configFiles = file_get_contents("configuration/posterconfig.json");
        file_put_contents($configFilePath, $configFiles);
        $_config = file_get_contents($configFilePath);
} else {
    $_config = file_get_contents($configFilePath);
}

 function getConfig($key, $def=null){
    global $_config;
    $Array = json_decode($_config, true);
    if(!empty($Array[$key])){
        return $Array[$key];
    } else {
        return $def;
    }
 }