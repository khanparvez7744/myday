<?php require_once("conn.php"); ?>
<?php $conn = new dbconn();
$pdo= $conn->connect();
?>

<?php
    $search=$_POST['search'];
    $sql="SELECT * FROM recipe_myday where (image LIKE '%$search%' or name LIKE '%$search%' or  description LIKE '%$search%' or ingredients LIKE '%$search%' or instructions LIKE '%$search%')";
    $result=$pdo->query($sql);
    $data=$result->fetchAll();
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
  <title>My Day | Recipes</title>
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
<section class="searchSec">
    <h1 class="Valeria-Bold center">Recipes for-<?php echo $search ?></h1>
<div class="row">
          <?php
            if($data){
            foreach($data as $value){
              $id=$value['id'];
              $image=$value['image'];
              $name=$value['name'];
              $serving=$value['serving'];
              $time=$value['time'];
              $description=strip_tags($value['description']);
          ?>
          <div class="col s3">
            <a href="recipe-view.php?myid=<?php echo $id; ?>" class="black-text">
            <div class="card">
                <div class="card-image">
                  <img src="images/<?php echo $image; ?>" class="responsive-img" alt="<?php echo $name; ?>">
                </div>
                <div class="card-content">
                  <p><?php echo $description; ?></p>
                </div>
                <div class="card-action">
                  <a href="recipe-view.php?myid=<?php echo $id; ?>">
                    <span class="left"><?php echo $time; ?> MIN</span>
                    <span class="right"><?php echo $serving; ?> SERVINGS</span>
                  </a>
                </div>
              </div>
              </a>
          </div>
          <?php
                    }
                }
                else{
            ?>
             <div class="col s12 center">
                <h4><?php echo $search ?> not found</h4>
            </div>
            <?php }?>
</div>
</section>
<?php require_once "footer.php"; ?>