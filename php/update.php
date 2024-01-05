<?php
    include "dbconfig.php";
    if (isset($_POST['update'])) {
    $quantaa_id = $_POST['quantaa_id'];
    $name_english = $_POST['name_english'];
    $name_bangla = $_POST['name_bangla'];
    $clazz_name = $_POST['clazz_name'];
    $father_name = $_POST['father_name'];
    $mother_name = $_POST['mother_name'];
    $birthday = $_POST['birthday'];
    $gender = $_POST['gender'];
    $district = $_POST['district'];
    $sql = "UPDATE `members` SET `name_english`='$name_english',`name_bangla`='$name_bangla',
    `father_name`='$father_name',`mother_name`='$mother_name',`gender`='$gender',
    `clazz_name`='$clazz_name',`district`='$district' WHERE `quantaa_id`='$quantaa_id'";
    $result = $conn->query($sql);
    if ($result == TRUE) {
        echo "Record updated successfully.";
        header('Location: read.php');
    }else{
        echo "Error:" . $sql . "<br>" . $conn->error;
    }

    }

    if (isset($_GET['quantaa_id'])) {
    $quantaa_id = $_GET['quantaa_id'];
    $sql = "SELECT * FROM members WHERE quantaa_id='$quantaa_id'";
    $result = $conn->query($sql);
    if ($result->num_rows > 0) {
        while ($row = $result->fetch_assoc()) {
            $quantaa_id = $row['quantaa_id'];
            $name_english = $row['name_english'];
            $name_bangla = $row['name_bangla'];
            $father_name = $row['father_name'];
            $mother_name = $row['mother_name'];
            $birthday = $row['birthday'];
            $gender = $row['gender'];
            $clazz_name = $row['clazz_name'];
            $district = $row['district'];
        }

?>
<link href="../assets/img/qimage/icon.png" rel="icon">
<link rel="stylesheet" href="../assets/vendor/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="../assets/css/php.css">
<link rel="stylesheet" href="../assets/css/style1.css">
<link rel="stylesheet" href="../assets/css/style.css">
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


<section class="section" style="height: 90vh;">
    <div class="card">
        <div class="card-body">
            <h2 class="pagetitle"><img src="../assets/img/qimage/icon.png" class="img-fluid icon" alt="">Quanta Details Update Form</h2>
            <form action="" method="post" class="row">
                <fieldset class="row g-3">
                    <legend>Personal information:</legend>
                    <div class="col-md-6">
                        <label for="NameinEnglish" class="form-label">Your Name in English</label>
                        <input type="text"  class=" form-control " name="name_english" value="<?php echo $name_english; ?>">
                    </div>
                    <div class="col-md-6">
                        <label for="NameinBangla" class="form-label">Your Name in Bangla</label>
                        <input type="text"  class=" form-control " name="name_bangla" value="<?php echo $name_bangla; ?>">
                    </div>
                    <div class="col-md-6">
                        <label for="father_name" class="form-label">Your Father's Name:</label>
                        <input type="text"  class=" form-control " name="father_name" value="<?php echo $father_name; ?>">
                    </div>
                    <div class="col-md-6">
                        <label for="mother_name" class="form-label">Your Mother's Name:</label>
                        <input type="text"  class=" form-control " name="mother_name" value="<?php echo $mother_name; ?>">
                    </div>
                    
                    <div class="col-md-3">
                        <label for="Quanta" class="form-label">Your Quanta ID:</label>
                        <input type="text"  class=" form-control " name="quantaa_id" value="<?php echo $quantaa_id; ?>">
                    </div>
                    <div class="col-md-3">
                        <label for="Class" class="form-label">Your Class</label>
                        <input type="text"  class=" form-control " name="clazz_name" value="<?php echo $clazz_name; ?>">
                    </div>
                    <div class="col-md-3">
                        <label for="birthday" class="form-label">Your Birth Day</label>
                        <input type=""  class=" form-control " name="birthday" value="<?php echo $birthday;?>">
                    </div>
                    <div class="col-md-3">
                        <label for="gender" class="form-label">Your Gender:</label>
                        <input type="text"  class=" form-control" name="gender" value="<?php echo $gender; ?>">
                    </div>
                    
                    
                    <div class="col-md-6">
                         <label for="District" class="form-label">Your District:</label>
                        <input type="text"  class=" form-control " name="district" value="<?php echo $district; ?>">
                    </div>
                    <div class="text-center">
                        <input type="submit" class="btn btn-primary" value="Update" name="update">
    
                    </div>
                </fieldset>
            </form>
        </div>
    </div>
</section>
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

</body>

</html>



<?php
    } else{
        echo "Error:" . $sql . "<br>" . $conn->error;
    }
    }
?>