<?php require_once '_libs/load.php'; ?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>&#393;AMN Poster - Website</title>
    <link rel="stylesheet" href="css/index.css">
    <link rel="icon" type="image/x-icon" href="icon/dp-icon.png">
</head>
<body>
    <?php 
        if(isset($_GET['PosterName'])){
            load_template("header.php");
            $poster = $_GET['PosterName'];
            $posterDetails = Poster::getPoster($poster);
            $row = count($posterDetails);
            echo "<h1 class=results>Results $row Found!</h1>";
            foreach($posterDetails as $poster):    
        ?>
        <div class="php-postercontainer">
            <img class="php-posterimg" src="posters/<?=$poster['PosterFile'];?>" alt="Poster">
                <div class="php-posterdetails">
                    <p class="postername"><?=$poster['PosterName'];?></p>
                    <h2 class="posterprice"><?=$poster['PosterPrice'];?></h2>
                <ul>
                    <li><a id="atc" class="btn" href="#addtocart">Add to cart</a></li>
                </ul>
            </div>
        </div>
      <?php
      endforeach;
            load_template("footer.php");
        } else { 
            echo "<div class=puff-in-center>";
                load_template("header.php");
                load_template("main.php"); 
                load_template("footer.php");
            echo "</div>";
        }
       ?>
</body>
</html> 