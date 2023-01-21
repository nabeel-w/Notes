<?php   
// Connect to the Database
$insert = false; 
$servername = "localhost";
$username = "root";
$password = "";
$database = "contacts";
// Create a connection
$conn = mysqli_connect($servername, $username, $password, $database);
// Create a connection
$conn = mysqli_connect($servername, $username, $password, $database);

// Die if connection was not successful
if (!$conn){
    die("Sorry we failed to connect: ". mysqli_connect_error());
}
if($_SERVER['REQUEST_METHOD']=='POST') {
    $title = $_POST["title"];
    $description = $_POST["description"];

    // Sql query to be executed
    $sql = "INSERT INTO `testdb` (`title`, `description`) VALUES ('$title', '$description')";
    $result = mysqli_query($conn, $sql);
    if($result){
        echo '<div class="alert alert-success alert-dismissible fade show" role="alert">
          <strong>Success!</strong> Your Note has been submitted successfully!
          <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
        </div>';
    }
    else{
        echo "The record was not inserted successfully because of this error ---> ". mysqli_error($conn);
    }
}
?>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Home</title>
    <link rel="icon" type="image/x-icon" href="/newp/check2-square.ico">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
  </head>
  <body>
    <div class="mt-3">
  <h3 class="text-center display-6" ><small class="text-muted">Welcome To Notes</small></h3>
  </div>
  <div class="container mt-1">
    <header class="d-flex flex-wrap align-items-center justify-content-center justify-content-md-between py-3 mb-4 border-bottom">
      <a href="#" class="d-flex align-items-center col-md-3 mb-2 mb-md-0 text-dark text-decoration-none">
      <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-check2-square" viewBox="0 0 16 16">
  <path d="M3 14.5A1.5 1.5 0 0 1 1.5 13V3A1.5 1.5 0 0 1 3 1.5h8a.5.5 0 0 1 0 1H3a.5.5 0 0 0-.5.5v10a.5.5 0 0 0 .5.5h10a.5.5 0 0 0 .5-.5V8a.5.5 0 0 1 1 0v5a1.5 1.5 0 0 1-1.5 1.5H3z"/>
  <path d="m8.354 10.354 7-7a.5.5 0 0 0-.708-.708L8 9.293 5.354 6.646a.5.5 0 1 0-.708.708l3 3a.5.5 0 0 0 .708 0z"/>
</svg>
      </a>

      <ul class="nav col-12 col-md-auto mb-2 justify-content-center mb-md-0">
      <ul class="nav nav-pills">
        <li class="nav-item"><a href="#" class="btn btn-outline-primary" aria-current="page" style="border-radius: 25px;">Home</a></li>
      </ul>
        <li><a href="/newp/notes.php" class="nav-link px-3 text-black">Notes</a></li>
        <li><a href="/newp/contact.php" class="nav-link px-3 link-dark">Contact Us</a></li>
      </ul>
      <div class="col-md-3 text-end">
    <button id="SignOut" type="button" class="btn btn-outline-danger" style="border-radius: 25px;">Log Out</button>
     </div>
    </header>
<div class="mb-3 col-auto">    
<form action="/newp/home.php" method="POST">
<div class="row g-3 align-items-center">
  <div class="mb-2 col-auto">
    <label for="title" class="form-label"></label>
    <div class="col-auto">
    <input type="text" class="form-control" name="title" id="title" aria-describedby="emailHelp" required placeholder="Title" style="border-radius: 25px;">
    </div>
    </div>
  </div>
  <div class="mb-3">
        <label for="description"></label>
        <textarea class="form-control" name="description" id="description" cols="30" rows="10" placeholder="Write your notes here"></textarea> 
    </div>
    <div class="my-4 text-center">
  <button type="submit" class="btn btn-outline-success" style="border-radius: 25px;">Submit</button>
  </div> 
</form>
</div>
</div>
<script>
      document.querySelector('#SignOut').addEventListener('click',()=>{
        window.location.href='/newp/index.php';
      })
    </script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js" integrity="sha384-mQ93GR66B00ZXjt0YO5KlohRA5SY2XofN4zfuZxLkoj1gXtW8ANNCe9d5Y3eG5eD" crossorigin="anonymous"></script>
  </body>
</html>