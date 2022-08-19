<?php require_once("conn.php"); ?>
<?php $conn = new dbconn();
$pdo= $conn->connect();
?>
<?php
$getid = $_GET["myid"];
$sql="SELECT * FROM species_myday where id='$getid'";
$result = $pdo->query($sql);
$data = $result->fetch();
$also[] = $data['also'];
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="title" content="My Day">
    <meta name="keywords" content="My Day">
    <meta name="description" content="My Day">
    <meta name="author" content="My Day">
    <title>My Day | Product</title>
    <link rel="shortcut icon" type="image/png" href="images/logo.png">

    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta2/css/all.min.css"
        integrity="sha512-YWzhKL2whUzgiheMoBFwW8CKV4qpHQAEuvilg9FAn5VJUDwKZZxkJNuGM4XkWuk94WCrrwslk8yWNGmY1EduTA=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="css/owl.carousel.css">
    <link href="css/style.css" rel="stylesheet">
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
</head>
<?php require("navbar.php"); ?>
<section class="childProduct">
<div class="container">
    <div class="row">
        <div class="col s6">
            <img src="images/<?php echo $data['image'] ?>" class="responsive-img" alt="choco Power">
        </div>
        <div class="col s6">
            <h2 class="Valeria-Bold hedding4">
                <?php echo $data['name']; ?>
            </h2>
            <p class="grey-text gramProduct">
                <?php echo $data['quatity']; ?> gm
            </p>
            <div class="starRow">
                <span class="left">
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                </span>
                <span class="right">
                    <?php echo $data['review'] ?> Reviews
                </span>
            </div>
            <br>
            <p class="fs-30 text-justify">
                <?php echo $data['description']; ?>
            </p>
            <a href="product.php" class="btn waves-effect waves-light">Back</a>
            <div class="alsoProduct">
                <p>
                    <?php
                    foreach($also as $alsoDisp) {
                        if($alsoDisp!=0){
                            echo "Also available in - ".$alsoDisp;
                        }
                    }
                    ?>
                </p>
            </div>
        </div>
       </div>
    </div>
</section>
<?php require_once "footer.php"; ?>