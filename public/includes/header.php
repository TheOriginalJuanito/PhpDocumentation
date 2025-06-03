<?php
require __DIR__ . '/../myconfig.php';
?>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>My Docs</title>
  <?php include 'includes/import/css.php' ?>  
</head>
<body>
  <header>
    <nav>
      <ul>
        <?php
        $contentDir = __DIR__ . '/../content/';
        if (is_dir($contentDir)) {
            $folders = array_diff(scandir($contentDir), ['.', '..']);
            foreach ($folders as $folder) {
                if (is_dir($contentDir . $folder)) {
                    $folderName = htmlspecialchars(ucfirst($folder));
                    $folderParam = urlencode($folder);
                    echo "<li><a href=\"?page=$folderParam\">$folderName</a></li>";
                }
            }
        }
        $current = isset($_GET['page']) ? $_GET['page'] : 'default'; 

        ?>
        </ul>

    </nav>
  </header>
  <main>

  <?php



  