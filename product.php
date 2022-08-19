<?php require("conn.php"); ?>
<?php $conn = new dbconn();
$pdo= $conn->connect();
?>

<?php
$sql1='select * from species_myday where category="breakfast"';
$result1 = $pdo->query($sql1);
$data1 = $result1->fetchAll();
?>

<?php
$sql2='select * from species_myday where category="species"';
$result2 = $pdo->query($sql2);
$data2 = $result2->fetchAll();
?>

<?php
$sql3='select * from species_myday where category="soyachunk"';
$result3 = $pdo->query($sql3);
$data3 = $result3->fetchAll();
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
<section class="productBnrSec">
        <img src="images/myday-product.jpg" class="responsive-img" alt="product Banner">
</section>
<section class="brfastSec" id="brfastSec">
    <div class="row">
        <img src="images/breakFastBnr.png" alt="break fast" class="responsive-img">
    </div>
    <div class="row">
    <?php
        foreach ($data1 as $value1) {
    ?>
        <div class="col s6 m4 l3">
        <a href="product-child.php?myid=<?php echo $value1['id']; ?>" class="black-text">
            <div class="card">
                <div class="center row">
                    <img src="images/<?php echo $value1['image']; ?>" alt="chocopower" class="responsive-img">
                    <h4 class="fs-25 fw-bold Helvetica-Light"><?php echo $value1['name']; ?>
                    </h4>
                    <h5 class="grey-text text-darken-1 fs-20"><?php echo $value1['quatity']; ?> gm
                    </h5>
                </div>
                <div class="starRow">
                    <span class="left">
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                    </span>
                    <span class="right fs-15"><?php echo $value1['review']; ?> Reviews</span>
                </div>
             </div>
            </a>
        </div>
        <?php } ?>

    </div>
</section>
<section class="spicesSec">
    <div class="row">
        <img src="images/spicProBanner.png" alt="Spices" class="responsive-img">
    </div>
    <div class="row">
<?php
 foreach ($data2 as $value2) {
?>
        <div class="col s6 m4 l3">
         <a href="product-child.php?myid=<?php echo $value2['id']; ?>" class="black-text">
            <div class="card">
                <div class="center row">
                    <img src="images/<?php echo $value2['image']; ?>" alt="Cardamom" class="responsive-img">
                    <h4 class="fs-25 fw-bold Helvetica-Light"><?php echo $value2['name']; ?>
                    </h4>
                    <h5 class="grey-text text-darken-1 fs-20"><?php echo $value2['quatity']; ?> gm
                    </h5>
                </div>
                <div class="starRow">
                    <span class="left">
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                    </span>
                    <span class="right fs-15"><?php echo $value2['review']; ?> Reviews</span>
                </div>
            </div>
            </a>
        </div>
<?php } ?>

    </div>
</section>

<section class="soyaChunkSec">
    <div class="row">
        <img src="images/soyaBanner.png" alt="Soya Chunk" class="responsive-img">
    </div>
    <div class="row">
    <?php
        foreach ($data3 as $value3) {
    ?>
        <div class="col  s6 m4 l3">
        <a href="product-child.php?myid=<?php echo $value3['id']; ?>" class="black-text">
            <div class="card">

                <div class="center row">

                    <img src="images/<?php echo $value3['image']; ?>" alt="Soya Chunk" class="responsive-img">

                    <h4 class="fs-25 fw-bold Helvetica-Light"><?php echo $value3['name']; ?>
                    </h4>
                    <h5 class="grey-text text-darken-1 fs-20"><?php echo $value3['quatity']; ?> gm
                    </h5>


                </div>
                <div class="starRow">
                    <span class="left">
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                    </span>
                    <span class="right fs-15"><?php echo $value3['review']; ?> Reviews</span>
                </div>
            </div>
            </a>
        </div>
        <?php } ?>
    </div>
</section>

<?php require_once "footer.php"; ?>