<!DOCTYPE html>
<html>

<head>
    <title>Quantaa Database</title>

    <link rel="stylesheet" href="../assets/vendor/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="../assets/css/php.css">
    <link rel="stylesheet" href="../assets/css/style1.css">
    <link rel="stylesheet" href="../assets/css/style.css">
    
</head>

<body>
<header id="header" class="fixed-top d-flex align-items-center"
        style="background-image: linear-gradient(15deg, #13547a 0%, #80d0c7 100%);">
        <div class="container d-flex align-items-center justify-content-between">

            <div class="logo">
                <a href="../index.php"><img src="../assets/img/qimage/icon.png" alt="" class="img-fluid"></a>
            </div>

            <nav id="navbar" class="navbar">
                <ul>
                    <li><a class="nav-link scrollto active" href="../index.php#hero">Home</a></li>
                    <li><a class="nav-link scrollto" href="../index.php#about">About</a></li>
                    <!-- <li><a class="nav-link scrollto" href="#services">Services</a></li> -->
                    <li><a class="nav-link scrollto " href="../index.php#portfolio">University</a></li>
                    <li class="dropdown"><a href="#menu"><span>Quanta Info</span> <i
                                class="bi bi-chevron-down dropdown-indicator"></i></a>
                        <ul id="menu">
                            <li><a href="./read.php">All Quanta Info</a></li>
                            <li><a href="./create.php">Add New Quanta</a></li>
                            <li><a href="./search.php">Search Quanta</a></li>
                        </ul>
                    </li>
                    <li><a class="nav-link scrollto" href="../index.php#team">Team</a></li>
                    <li><a class="nav-link scrollto" href="../index.php#contact">Contact</a></li>
                    <!-- <li><a class="nav-link scrollto " href="#footer">Search</a></li> -->
                </ul>
                <i class="bi bi-list mobile-nav-toggle"></i>
            </nav><!-- .navbar -->

        </div>
    </header>

    <main id="main" class="main" style="height: 90vh;">
  <section class="section">
    <div class="card">
          <div class="card-body">
            
            <h5 class="pagetitle">New Quanta Information</h5>


            <form class="row" action="" method="POST">
              <fieldset class="row g-3">
                <div class="col-md-6">
                  <label for="FirstName" class="form-label">Your Name in English</label>
                  <input class=" form-control " type="text" name="name_english" placeholder="Name in English" required>
                </div>
                <div class="col-md-6">
                  <label for="LastName" class="form-label">Your Name in Bangla</label>
                  <input class="form-control " type="text" name="name_bangla" placeholder="Name in Bangla" required>
                </div>
                <div class="col-md-6">
                  <label for="FatherName" class="form-label">Your Father Name (Bangla):</label>
                  <input class="form-control " type="text" name="father_name" placeholder="Your Father Name (Bangla)" required>
                </div>
                <div class="col-md-6">
                  <label for="MotherName" class="form-label">Your Mother Name (Bangla):</label>
                  <input class="form-control " type="text" name="mother_name" placeholder="Your Mother Name (Bangla)" required>
                </div>
                <div class="col-md-3">
                  <label for="quantaa" class="form-label">Quanta ID:</label>
                  <input class="form-control " type="text" name="quantaa_id" placeholder="Quanta ID" required>
                </div>
                <div class="col-md-3">
                  <label for="class" class="form-label">Class</label>
                  <input class="form-control " type="text" name="clazz_name" placeholder="Class" required>
                </div>
                <div class="col-md-3">
                  <label for="Gender" class="form-label">Gender:</label>
                  <input class="form-control " type="text" name="gender" placeholder="Gender" required>
                </div>
                <div class="col-md-3">
                  <label for="birthday" class="form-label">Birthday:</label>
                  <input type="date" class="form-control" name="birthday" id="inputDate"required>
                </div>
                <div class="col-md-6">
                  <label for="district" class="form-label">District:</label>
                  <input class="form-control " type="text" name="district" placeholder="District"required>
                </div>
                <div class="col-md-6">
                  <label for="Institution" class="form-label">Institution:</label>
                  <input class="form-control " type="text" name="institution" placeholder="Institution"required>
                </div>
                <div class="text-center">
                  <button type="submit" name="submit" class=" btn btn-primary">Submit</button>
                  <button type="submit" name="submit" class=" btn btn-primary"><a href="../index.php"
                      style="color: #fff;">Go to Home</a></button>
                  <button type="submit" name="submit" class=" btn btn-primary"><a href="read.php"
                      style="color: #fff;">All Quanta</a></button>
                  <button type="reset" class=" btn btn-danger" onclick="location.reload()">Reset</button>
                </div>
              </fieldset>
            </form>

          </div>
        </div>
       
    </section>
    

  </main>
<!-- ======= Footer ======= -->
<footer id="footer">

    

<div class="container footer-bottom clearfix">
  <div class="copyright">
    &copy; Copyright <strong><span>Quanta Info</span></strong>. Develoved by Yamin (2592), Uttaran (490), Bokul (1005).
    All Rights Reserved
  </div>
  <div class="credits">
    <!-- All the links in the footer should remain intact. -->
    <!-- You can delete the links only if you purchased the pro version. -->
    <!-- Licensing information: https://bootstrapmade.com/license/ -->
    <!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/knight-free-bootstrap-theme/ -->
    Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
  </div>
</div>
</footer><!-- End Footer -->


  <script src="../js/main.js"></script>

  <script src="../vandor/bootstrap/js/bootstrap.min.js"></script>



</body>
</html>

<?php
include "dbconfig.php";
if (isset($_POST['submit'])) {
    $name_english = $_POST['name_english'];
    $name_bangla = $_POST['name_bangla'];
    $father_name = $_POST['father_name'];
    $mother_name = $_POST['mother_name'];
    $quantaa_id = $_POST['quantaa_id'];
    $birthday = $_POST['birthday'];
    $gender = $_POST['gender'];
    $clazz_name = $_POST['clazz_name'];
    $institution = $_POST['institution'];
    $district = $_POST['district'];
    $sql = "INSERT INTO `members`(`name_english`, `name_bangla`, `father_name`, `mother_name`, `quantaa_id`, `birthday`, `gender`, `clazz_name`, `institution`, `district`)
                          VALUES ('$name_english','$name_bangla','$father_name','$mother_name','$quantaa_id','$birthday','$gender', '$clazz_name', '$institution','$district')";
    $result = $conn->query($sql);
    if ($result == TRUE) {
        echo "<div class='card card-body delete text-center'>
        <h1 class='delete'>New record created Successfully.</h1>
        <a href='read.php' class ='btn btn-primary '>OK</a>
        <img src='../img/icon.png' class='img-fluid icon_delete' >
      <div>";
        
          
      
        // echo get_class="promt" -> "New record created successfully."
        // echo "<br><br><a href='read.php'>All Quantaas</a>";
        //header('Location: read.php');
    }else{
        echo "Error:". $sql . "<br>". $conn->error;
    }
    $conn->close();
}
?>