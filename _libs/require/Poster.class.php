<?php declare (strict_types = 1);

class Poster{
    public static function getPoster($poster){
    try{
        $conn = Database::getConnection();
        if($conn == TRUE){
            $sql = "SELECT `PosterName`,`PosterFile`,`PosterPrice` FROM `Posters_Table` WHERE `PosterName` LIKE  '%$poster%' OR `Poster` = '%$poster%'";
            $result = $conn->query($sql);
            /**
             * Without proper sanitzation, all user-provided input is considered vulnerable. 
             * In this scenario '%$poster%'.
             */
                if($result->num_rows >= 1){
                    $result = $result->fetch_all(MYSQLI_ASSOC);
                    return $result;
                } else {
                    die ("<h1 class=error-msg>Poster might be not available</h1>");
                }
            }
    } catch (Exception $error) {
        die ("Database error: ".$error->getMessage());
    } finally {
        Database::closeConnection();
    }
    }
}