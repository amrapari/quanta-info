<!DOCTYPE html>
<html>
<title>Quantaa Database</title>
<link rel="stylesheet" href="../assets/vendor/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="../assets/css/php.css">
<link rel="stylesheet" href="../assets/css/style1.css">
<link rel="stylesheet" href="../assets/css/style.css">
<link rel="shortcut icon" href="../assets/img/qimage/icon.png" type="image/x-icon">

<body >
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

    <section class="search-section d-flex justify-content-center align-items-center "  id="section_1" style="height: 90vh;">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-12 mx-auto">
                    <!-- <h1 class="text-center"><a href="../index.php"><img src="../assets/img/qimage/icon.png" class="img-fluid search-icon"
                            alt="" style="height: 35%; width: 30%;"></a></h1> -->
                    <h1 class="text-primary text-center">Quantum Cosmo School & College </h1>
                    <h6 class="text-center">Quanta Information System</h6>
                    <form action="" method="POST" class="custom-form mt-4 pt-2 mb-lg-0 mb-5" role="search">
                        <div class="input-group input-group-lg">
                            <span class="input-group-text " id="basic-addon1"><img src="../assets/img/qimage/icon.png"
                                    class="img-fluid bar-icon" alt=""></span>
                            <input name="quantaa_id" type="search" class="form-control " id="keyword"
                                placeholder="Search with Quanta ID" aria-label="Search">
                            <button type="submit" title="Search" name="submit" value="submit"
                                class="form-control">Search</button>
                        </div>
                    </form>
                </div>
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



    <?php
include "dbconfig.php";
if (isset($_POST['submit'])) {
    $quantaa_id = $_POST['quantaa_id'];
    $sql = "SELECT * FROM members WHERE quantaa_id ='$quantaa_id'";
    $result = $conn->query($sql);

    $result = $conn->query($sql);
    if ($result->num_rows > 0) {
        while ($row = $result->fetch_assoc()) {
            ?>
            <div class="popup card">
                <div class="popup-content card-body">
                    <button type="button" class="btn btn-danger" style ="align-items: end;  place-content: end;">X</button>

                    <table class="table caption-top table-hover table-bordered ">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>Name English</th>
                                <th>Name Bangla</th>
                                <th>Father Name</th>
                                <th>Mother Name</th>
                                <th style="width : 10%">Quantaa ID</th>
                                <th>Class</th>
                                <th>Birthday</th>
                                <th>Gender</th>
                                <th>District</th>
                                <!-- <th style="width : 10%">Action</th> -->
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>
                                    <?php echo $row['id']; ?>
                                </td>
                                <td>
                                    <?php echo $row['name_english']; ?>
                                </td>
                                <td>
                                    <?php echo $row['name_bangla']; ?>
                                </td>
                                <td>
                                    <?php echo $row['father_name']; ?>
                                </td>
                                <td>
                                    <?php echo $row['mother_name']; ?>
                                </td>
                                <td>
                                    <?php echo $row['quantaa_id']; ?>
                                </td>
                                <td>
                                    <?php echo $row['clazz_name']; ?>
                                </td>
                                <td>
                                    <?php echo $row['birthday']; ?>
                                </td>
                                <td>
                                    <?php echo $row['gender']; ?>
                                </td>
                                <td>
                                    <?php echo $row['district']; ?>
                                </td>
                                <!-- <td><a class="btn btn-info" href="update.php?quantaa_id=<?php echo $row['quantaa_id']; ?>">Update</a></td> -->
                            </tr>

                        </tbody>
                    </table>
                    <div class="text-center">
                        <button class="btn btn-primary "><a class="text-white" href="update.php?quantaa_id=<?php echo $row['quantaa_id']; ?>">Update</a></button>
                    </div>
                </div>
            </div>
            <script>
                const popup = document.querySelector('.popup');
                const x = document.querySelector('.popup-content button');

                window.addEventListener('load', () => {
                    popup.classList.add('showPopup');
                    popup.childNodes[1].classList.add('showPopup');
                });
                x.addEventListener('click', () => {
                    popup.classList.remove('showPopup');
                    popup.childNodes[1].classList.remove('showPopup');
                });

            </script>

    
    <?php
        }
    } else {
    echo "No Quanta Information Found with Quantaa ID " . $quantaa_id;
    }
    $conn->close();
}
?>
   
</body>

</html>