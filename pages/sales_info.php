
<?php
require_once "connect.php";
if(isset($_GET["barcode"])){
    $barcode = $_GET["barcode"];
    $sql = mysqli_query($con," SELECT  godam.name_of_m AS name_of_m, catagori.catagori_name AS catagori_n,
     godam.numbers AS numbers, godam.price_per_item AS price_per_item FROM godam 
    INNER JOIN catagori ON godam.catagori_name=catagori.id WHERE godam.barcode = '$barcode'");
    $row = mysqli_fetch_assoc($sql);
    $obj = array(
        "name_of_m" => $row["name_of_m"],
        "catagori_n" => $row["catagori_n"],
        "numbers" => $row["numbers"],
        "price_per_item" => $row["price_per_item"],
    );
    echo json_encode($obj);

}
?>
