<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Quanta Database</title>
    <link rel="stylesheet" href="./assets1/vandor/bootstrap/css/bootstrap.min.css">
</head>
<body>
   <?php
    include "dbconfig.php";
    if (isset($_GET['quantaa_id'])) {
        $quantaa_id = $_GET['quantaa_id'];
        $sql = "DELETE FROM members WHERE quantaa_id ='$quantaa_id'";
        $result = $conn->query($sql);
        if ($result == TRUE) {
            // echo "Record deleted successfully.";
        ?>
<style>
    .popup {
      position: fixed;
      top: 0;
      width: 100vw;
      height: 100vh;
      background-color: rgba(0, 0, 0, .3);
      display: grid;
      place-content: center;
      opacity: 0;
      pointer-events: none;
      transition: 200ms ease-in-out opacity;
    }
    /* .popup img{
        with :100px;
        margin-top : -50px;
        border-radius: 50%;
        box-shadow: 0 2px 5px rgba(0,0,0,0.2)
    } */

    .popup-content {
      /* width: clamp(300px, 90vw, 500px); */
      width: 100%;
      /* height: 50px; */
      background-color: #fff;
      /* padding: clamp(1.5rem, 100vw, 3rem); */
      box-shadow: 0 0 .5em rgba(0, 0, 0, .5);
      border-radius: .5em;
      opacity: 0;
      transform: translateY(20%);
      transition: 200ms ease-in-out opacity,
        200ms ease-in-out transform;
      position: relative;
    }
    .popup h1:active {
      transform: scale(.9);
    }
    .showPopup {
        opacity: 1;
        transform: translateY(0);
        pointer-events: all;
    }

</style>

    <div class="popup card">
        <!-- <img src="../assets/img/qimage/icon.png" alt="" class="icon"></a> -->
        <div class="popup-content card-body">
            <button type="button" class="btn btn-danger" style ="align-items: end;  place-content: end;">X</button>
            <div class="text-center">
                <p>Record deleted successfully</p>
            </div>
            <div class="text-center">
                <a class="btn btn-primary" href='read.php'>Ok</a>
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
        }else{
            echo "Error:" . $sql . "<br>" . $conn->error;
        }
    }
    ?>
 
</body>
</html>



