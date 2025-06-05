<?php
require_once __DIR__ . '/../Parsedown.php';
require_once __DIR__ . '/../myconfig.php';

$mdFile = 'content/'. $Directory . "/". $file;

echo "<div class=\"mdContent\">";

if (file_exists($mdFile)) {
    $md = file_get_contents($mdFile);
    $Parsedown = new Parsedown();
    echo $Parsedown->text($md);
}
echo "</div>";