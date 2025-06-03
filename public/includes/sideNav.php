<?php

require __DIR__ . '/../myconfig.php';

$folder = 'content/' . $Directory;

$files = glob($folder . '/*.md');

// Output list
echo "<ul class=\"Sidenav\">";
foreach ($files as $file) {
    $filename = basename($file);
    $displayName = pathinfo($filename, PATHINFO_FILENAME); 
    echo "<li><a href=\"?page=$Directory&amp;doc=$filename\">$displayName</a></li>";
}
echo "</ul>";
$file = isset($_GET['doc']) ? $_GET['doc'] : 'index';

?>
