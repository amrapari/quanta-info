<?php
include "dbconfig.php";
?>
<!DOCTYPE html>
<html>
<head>
    <title>Quanta Database</title>
     <!--<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">-->
    <!-- <link rel="stylesheet" href="./assets1/css/php.css"> -->
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

    <div class="card">
      <div class="card-body">
          <h5 class="pagetitle" ><strong>Quantaum Cosmo School & College</strong><br>Quanta Details</h5>
         
        <table class="table table-bordered table-striped ">
          <thead style="text-align: center;">
            <tr>
              <div class="row">
              <th scope="col">ID</th>
              <th scope="col">Name English</th>
              <!-- <th scope="col">Picture</th> -->
              <th scope="col">Name Bangla</th>
              <th scope="col">Father Name</th>
              <th scope="col">Mother Name</th>
              <th scope="col" style="width : 10% ;">Quanta ID</th>
              <th scope="col">Class</th>
              <th scope="col">Gender</th>
              <th scope="col">District</th>
              <th scope="col" style="width: 20%;">Action</th>
              </div>
            </tr>
          </thead>
          <tbody>
            <?php
                  $sql = "SELECT * FROM members";
                  $result = $conn->query($sql);
                  if ($result->num_rows > 0) {
                      while ($row = $result->fetch_assoc()) {
                          ?>
            <tr class="table-primary" style="text-align: center;">
              <td>
                <?php echo $row['id']; ?>
              </td>
              <td style="text-align: start;">
                <?php echo $row['name_english']; ?>
              </td>
             
              <td style="text-align: start;font-family: Kalpurush;">
                <?php echo $row['name_bangla']; ?>
              </td>
              <td style="text-align: start;">
                <?php echo $row['father_name']; ?>
              </td>
              <td style="text-align: start;">
                <?php echo $row['mother_name']; ?>
              </td>
              <td>
                <?php echo $row['quantaa_id']; ?>
              </td>
              <td>
                <?php echo $row['clazz_name']; ?>
              </td>
              <td>
                <?php echo $row['gender']; ?>
              </td>
              <td style="text-align: start;">
                <?php echo $row['district']; ?>
              </td>
              <td>
                <a class="btn btn-info" href="update.php?quantaa_id=<?php echo $row['quantaa_id']; ?>">Update</a>
                 &nbsp;
                <a class="btn btn-danger" href="delete.php?quantaa_id=<?php echo $row['quantaa_id']; ?>">Delete</a> 
              </td>
            </tr>
            <?php
                    }
                  }
                  ?>
          </tbody>
        </table>

      </div>
    </div>
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