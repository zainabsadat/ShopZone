
<?php
include 'connect.php';
$select = "SELECT  barcode FROM godam ";
$sales_result=mysqli_query($con,$select);

include 'connect.php';
if(isset($_POST['submit'])){
  $barcode_id = $_POST['barcode'];
  $name_of_m = $_POST['name_of_m'];
  $type_of_m = $_POST['type'];
  $material_amount = $_POST['numbers'];
  $sell_price = $_POST['price_per_item'];
  $delivery_price = $_POST['delivery'];
  $date = $_POST['date-man'];

$select = mysqli_query($con, "SELECT  numbers FROM godam  WHERE id ='$barcode_id'");
$row = mysqli_fetch_assoc($select);

$check=$row['numbers'];
$tafriq=intval($check) - intval($name_of_m);

if(intval($name_of_m)>intval($check)){
  echo("این رقم در گدام موجود نیست");
  "setnull()";
}
else {
  // update amount from godam 
  $sql_update="UPDATE godam SET numbers=$tafriq WHERE id =$barcode_id";
  $result_update=mysqli_query($con,$sql_update);
    if($result_update){
        echo "data updated";
    }
    else{
      echo (" not data updated");
    } 
    // insert info to froshat 
    $insert_data=" INSERT INTO froshat(barcode_id, name_of_m, 	type_of_m, material_amount, sell_price, delivery_price, date)
    VALUES('$barcode_id','$name_of_m','$type_of_m','$material_amount', '$sell_price','$delivery_price','$date')";
    $result2= mysqli_query($con, $insert_data);
    if($result2){
      echo ("data inserted");
    }else{
      echo ("not insert");
    }
  }

}
?>

<!DOCTYPE html>
<html lang="fa" dir="rtl">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>سیستم مدیریت فروشگاه / ثبت فروشات</title>
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
    <!-- Jqurey link -->
    <script src="../bootstrap_4/jquery/dist/jquery.min.js"></script>
</head>

<body style="background-color: #f7f0e8; padding: 60px 40px;">
  <!-- Main content -->
  <section class="content container-fluid">
    <div class="row" style="text-align: center;">
      <div class="col-md-12">
        <div class="titlebody">
          <div class="title">
            <span id="title">ثبت فروشات</span>
          </div>
        </div>
      </div>
    </div>

    <!-- first row for form content -->
   <div class="row">
     <div class="col-md-12">
       <form action="#" method="POST" style="padding: 12px;" class="needs-validation">
         <div class="row">
           <!-- first col -->
          <div class="col-md-4">
            <div class="form-group">
              <label for="barcod">بارکود</label>
              <select name="barcode" id="barcode" class="form-control" onchange="ShowUser(this.value)" required>
              <?php while($row=mysqli_fetch_array($sales_result)):; ?>
                <option value="<?php echo $row["barcode"];?>"> <?php echo $row["barcode"];?></option>
                <?php endwhile; ?>
              </select>
            </div>

            <div class="form-group">
              <label for="name">نام جنس</label>
              <input type="text" class="form-control" id="name_of_m" placeholder="نام جنس" name="name_of_m" pattern = "^[a-zA-Zا-ی_ ]+$" required>
            </div>
          </div>

          <!-- second col -->
          <div class="col-md-4">
            <div class="form-group">
              <label for="type">کتگوری جنس</label> <br>
              <input type="text" class="form-control" id="catagori_n" placeholder="کتگوری جنس" name="catagori_n" pattern = "^[a-zA-Zا-ی_ ]+$" required>
            </div>

            <div class="form-group">
              <label for="amount">تعداد</label>
              <input type="number" class="form-control" id="numbers" placeholder="تعداد" name="numbers" pattern = "^[0-9۰-۹_ ]+$" required>
            </div>
          </div>

          <!-- third col -->
          <div class="col-md-4">
            <div class="form-group" style="position: relative;">
              <label for="price">قیمت</label>
              <input type="number" class="form-control" id="price_per_item" placeholder="قیمت" name="price_per_item" pattern = "^[0-9۰-۹_ ]+$" required>
            </div>

            <div class="form-group" style="position: relative;">
              <label for="delivery">کرایه راه</label>
              <input type="number" class="form-control" id="delivery" placeholder="کرایه راه" name="delivery" pattern = "^[0-9۰-۹_ ]+$" required>
             
            </div>
          </div>
        </div>

         <!-- button col -->
         <div class="row">
          <div class="col-md-4">
            <div class="form-group">
              <label for="date-man">تاریخ</label>
              <input type="date" class="form-control" id="date-man" name="date-man" required>
            </div>
          </div>
           <div class="col-md-8">
           <button type="submit"  class="btn saveBtn"  id="submit-button" name="submit"  style="background-color: #1F4594; margin-top: 27px;">ذخیره شود</button>
            </div>
        </div>
       </form>
     </div>
   </div>
  </section>

<!-- query code for datepicker-->
<script>
   function ShowUser(barcode) {
      $.ajax({
        type: 'GET',
        data: {
          'barcode': barcode
        },
        url: 'sales_info.php',
        success: function(data) {
          var res = JSON.parse(data);
          $("#name_of_m").val(res["name_of_m"]);
          $("#catagori_n").val(res["catagori_n"]);
          $("#numbers").val(res["numbers"]);
          $("#price_per_item").val(res["price_per_item"]);

        },
      });
    }
  

function setnull(){
        document.getElementById["name"].value=null;
        document.getElementById["type"].value=null;
        document.getElementById["amount"].value=null;
        document.getElementById["price"].value=null;
        document.getElementById["delivery"].value=null;
      
       }
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