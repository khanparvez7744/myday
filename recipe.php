<?php require_once("conn.php"); ?>
<?php $conn = new dbconn();
$pdo= $conn->connect();
?>

<?php
  $sql="select * from recipe_myday";
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
<section>
    <img src="images/myday-recipe.jpg" class="responsive-img w-100" alt="Recipe">
</section>
<section class="srchRecSec">
  <div class="row">
    <div class="col s1">
    </div>
    <div class="col s10">
        <form method="post" action="search.php" class="d-flex bigSearch">
            <input type="search" name="search" required placeholder="Search Recipe..." class="browser-default z-depth-3">
            <button class="btn btnBigSearch" type="submit"><i class="fa fa-search"></i></button>
        </form>
    </div>
    <div class="col s1">
    </div>
  </div>
</section>
<section class="cookSec">
    <h1 class="Valeria-Bold">All Recipes</h1>
<div class="row">
          <?php
            foreach($data as $value){
              $id=$value['id'];
              $image=$value['image'];
              $name=$value['name'];
              $serving=$value['serving'];
              $time=$value['time'];
              $description=strip_tags($value['description']);
          ?>
          <div class="col xl3 l4 m6 s6">
            <a href="recipe-view.php?myid=<?php echo $id; ?>" class="black-text">
            <div class="card">
                <div class="card-image">
                  <img src="images/<?php echo $image; ?>" class="responsive-img" alt="<?php echo $name; ?>">
                </div>
                <div class="card-content">
                  <h4 class="Valeria-Bold"><?php echo $name ?></h4>
                  <p><?php echo substr($description,0,70); ?>...</p>
                </div>
                <div class="card-action">
                    <span class="left"><?php echo $time; ?> MIN</span>
                    <span class="right"><?php echo $serving; ?> SERVINGS</span>
                </div>
              </div>
              </a>
          </div>
        <?php }  ?>
</div>
</section>
<?php require_once "footer.php"; ?>