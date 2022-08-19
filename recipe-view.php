<?php require_once("conn.php"); ?>
<?php $conn = new dbconn();
$pdo= $conn->connect();
?>

<?php
$id=$_GET['myid'];
$sql="select * from recipe_myday where id='$id'";
$result=$pdo->query($sql);
$data=$result->fetch();

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
  <title>My Day | Recipes View</title>
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
<section class="viewRcpBnr">
  <div class="container">
  <div class="row">
    <div class="col s4">
      <img src="images/<?php echo $data['image'] ?>" alt="Soya Reipe" class="responsive-img">
    </div>
    <div class="col s8 recVieS8">
      <h2 class="hedding4 Valeria-Bold"><?php echo $data['name'] ?>
    </h2>
      <p class="fs-25 text-justify"><?php echo $data['description'] ?>
</p>
<a href="recipe.php" class="btn btn-large waves-effect waves-light">Back</a>
    </div>
    </div>
  </div>
</section>
<secion class="ingreSec">
  <div class="container">
    <div class="row">
      <div class="col m6 s12">
        <div class="carda">
          <h4 class="Valeria-Bold">Ingredients
</h4>
<?php echo $data['ingredients'] ?>
        </div>
      </div>
      <div class="col m6 s12">
      <div class="carda">
          <h4 class="Valeria-Bold">Recipe Instructions
</h4>
<?php echo $data['instructions'] ?>
        </div>
      </div>
    </div>
  </div>
</secion>
<br>
<br>
<?php require_once "footer.php"; ?>