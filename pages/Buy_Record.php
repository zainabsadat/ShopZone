<?php
include 'connect.php';

$select_item = "SELECT * FROM `catagori`";

  $s_result=mysqli_query($con,$select_item);
 

if(isset($_POST['submit'])){
  $barcode=$_POST['barcode'];
  $item_name=$_POST['item_name'];
  $item_type=$_POST['item_type'];
  $amount=$_POST['amount'];
  $price=$_POST['price'];
  $delivery=$_POST['delivery'];
  $tax=$_POST['tax'];
  $total_price=$_POST['total_price'];
  $salse_price=$_POST['salse_price'];
  $price_per_item=$_POST['price_per_item'];
  $date=$_POST['date-man'];


  
     
    $sql="INSERT INTO `godam`( `barcode`, `name_of_m`, `catagori_name`, `numbers`, `main_price`, `delivery_price`, `tax`, `total_price`, `sales_price`, `price_per_item`, `date`) 
    VALUES ('$barcode','$item_name','$item_type','$amount','$price', '$delivery', '$tax', '$total_price' , '$salse_price', '$price_per_item', '$date')";
    $result=mysqli_query($con,$sql);
   
    if($result){
     " setnull()";
    }
    else{
      echo $sql;
      die(mysqli_error($con));
    }
  }
  


?>

<!DOCTYPE html>
<html lang="fa" dir="rtl">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>ShopZone Management System / ثبت خرید</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <!-- logo -->
    <link rel="shortcut icon" href="../Pictures/LOGO.png" type="image/x-icon">
    <!-- CSS link -->
    <link rel="stylesheet" href="../CSS/Record.css">
    <!-- Bootstrap CSS link -->
    <link rel="stylesheet" href="../bootstrap_4/css/bootstrap.min.css">
    <!-- Bootstrap rtl -->
    <link rel="stylesheet" href="../bootstrap_4/css/rtl.css">
    <!-- Bootstrap JS link-->
    <script src="../bootstrap_4/js/bootstrap.min.js"></script>
    <!-- Jqurey link -->
    <script src="../bootstrap_4/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap JS link-->
    <script src="../bootstrap_4/js/bootstrap.min.js"></script>
    <!-- pop up -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
</head>

<script>
      function setnull(){
        document.getElementById["barcode"].value=null;
        document.getElementById["item_name"].value=null;
        document.getElementById["item_type"].value=null;
        document.getElementById["amount"].value=null;
        document.getElementById["price"].value=null;
        document.getElementById["delivery"].value=null;
        document.getElementById["tax"].value=null;
        document.getElementById["total_price"].value=null;
        document.getElementById["salse_price"].value=null;
        document.getElementById["price_per_item"].value=null;
        
       }
</script>

<body style="background-color: #f7f0e8; padding: 60px 40px;">
    <!-- Main content -->
   <section class="content container-fluid">
    <div class="row" style="text-align: center;">
      <div class="col-md-12">
        <div class="titlebody">
          <div class="title">
            <span id="title">ثبت خرید اجناس</span>
          </div>
        </div>
      </div>
    </div>

    <!-- first row of form content -->
   <div class="row">
     <div class="col-md-12">
       <form action="#" method="POST" style="padding: 12px; margin-bottom: -20px !important;" class="needs-validation">
          <div class="row">
            <!-- first col -->
            <div class="col-md-4">
            <div class="form-group">
              <label for="barcode">بارکود</label>
              <input type="text" class="form-control" id="barcode" placeholder="بارکود" name="barcode" required>
            </div>

            <div class="form-group">
              <label for="item_name">نام جنس</label>
              <input type="text" class="form-control" id="item_name" placeholder="نام جنس" name="item_name"  minlength = "2" pattern = "^[ا-یa-zA-Z0-9۰-۹ _]+$" required>
            </div>

            <div class="form-group">
                <label for="item_type">کتگوری جنس</label>
                <select name="item_type" id="item_type" class="form-control">
                <?php while($row=mysqli_fetch_array($s_result)):; ?>
                  <option value="<?php echo $row[0]; ?>" > <?php echo $row[1];?>
                 </option>
                 <?php endwhile; ?>
                </select>
            </div>

            <div class="form-group">
              <label for="amount">تعداد</label>
              <input type="number" class="form-control" id="amount" placeholder="تعداد" name="amount" minlength="1" pattern="^[0-9۰-۹]+$" required>
            </div>
            </div>

            <!-- second col -->
            <div class="col-md-4">
            <div class="form-group" style="position: relative;">
                <label for="price">قیمت</label>
                <input type="number" class="form-control" id="price" placeholder="قیمت" name="price" pattern="^[0-9۰-۹]+$" required>
              </div>

            <div class="form-group" style="position: relative;">
              <label for="delivery">کرایه راه</label>
              <input type="number" class="form-control" id="delivery" placeholder="کرایه راه" name="delivery" pattern="^[0-9۰-۹]+$" required>
            </div>

            <div class="form-group" style="position: relative;">
              <label for="tax">مالیه</label> <br>
              <input type="number" class="form-control" id="tax" placeholder="مالیه" name="tax" pattern="^[0-9۰-۹]+$" required>
            </div>

            <div class="form-group" style="position: relative;">
              <label for="total_price">قیمت مجموعی</label>
              <input type="number" class="form-control" id="total_price" placeholder="قیمت مجموعی" name="total_price" pattern="^[0-9۰-۹]+$" required>
          </div>
            </div>

            <!-- third col -->
            <div class="col-md-4">
              <div class="form-group" style="position: relative;">
                <label for="selse_price">قیمت فروش</label>
                <input type="number" class="form-control" id="salse_price" placeholder="قیمت فروش" name="salse_price" pattern="^[0-9۰-۹]+$" required>
            </div>

            <div class="form-group" style="position: relative;">
                <label for="price_per_item">قیمت فی جنس</label>
                <input type="number" class="form-control" id="price_per_item" placeholder="قیمت فی جنس" name="price_per_item" pattern="^[0-9۰-۹]+$" required>
             </div>

            <div class="form-group">
                <label for="date-man">تاریخ</label>
                <input type="date" class="form-control" id="date-man" name="date-man" required>
            </div>

            <div class="form-group">
              <div class="col-md-12" style="width: 100% !important; padding-left: 0px; padding-right: 0px;">
                <button name="submit" type="submit" class="btn saveBtn" type="button" id="submit-button" style="background-color: #1F4594;">ذخیره شود</button>
             </div>
            </div>
            </div>
          </div>
       </form>

       <form action="Buy_catagory_type.php" method="POST">
          <button type="button" data-toggle="modal" data-target="#add" class="btn col-md-12" type="button" id="add-expense" style="background-color: #f1ae21; margin-top: 30px; color: white; font-weight: bold; padding: 8 20px; width: 100%; border-radius: 10px;">کتگوری جدید اضافه شود</button> 
        <div class="modal" id="add">
          <div class="modal-dialog modal-dialog-centered modal-md">
              <div class="modal-content">
                  <div class="modal-header" style="background-color: #f1ae21; height: 180px;">
                    <img src="../Pictures/Capture-PhotoRoom (1).png" class="col-md-5" alt="" width="110px" height="100px" style="margin:auto;">
                  </div>
                  <div class="modal-body" style="text-align: center; margin: 20px 40px;">
                      <div class="row">
                          <label for="expense">کتگوری جدید اضافه شود</label>
                          <input type="text" class="form-control" id="expense" placeholder="مصرف جدید اضافه شود" name="catagori_name" pattern = "^[a-zA-Zا-س_]+$" required>
                          <input type="submit"  name="Add" class="col-sm-12 col-md-5" type="button" id="button_add" value="اضافه شود">
                          <button class="col-sm-12 col-md-5" type="button" id="button_not_add" data-dismiss="modal">اضافه نشود</button>
                      </div>
                  </div>
              </div>
          </div>
      </div>
        </form>
     </div>
   </div>
 </section>
<script>
  // Disable form submissions if there are invalid fields
  (function() {
        'use strict';
        window.addEventListener('load', function() {
          // Get the forms we want to add validation styles to
          var forms = document.getElementsByClassName('needs-validation');
          // Loop over them and prevent submission
          var validation = Array.prototype.filter.call(forms, function(form) {
            form.addEventListener('submit', function(event) {
              if (form.checkValidity() === false) {
                event.preventDefault();
                event.stopPropagation();
              }
              form.classList.add('was-validated');
            }, false);
          });
        }, false);
      })();
</script>
</body>
</html>