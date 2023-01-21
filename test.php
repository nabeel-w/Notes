<?php
    $error1 = false;
    $error = false;
    $servername = "localhost";
    $username = "root";
    $password = "";
    $database = "contacts";
    // Create a connection
    $conn = mysqli_connect($servername, $username, $password, $database);

    // Die if connection was not successful
    if (!$conn){
        die("Sorry we failed to connect: ". mysqli_connect_error());
    }

            $email = "abc@gmail.com";
            $password = "admin";
            //$hash = password_hash($password, PASSWORD_DEFAULT);
            //echo "<br>" . $hash. "<br>";
            $sql = "SELECT * FROM `users` WHERE email = '$email'";
            $result = mysqli_query($conn, $sql);
            $num = mysqli_num_rows($result);
            echo $num;
            if ($num == 1) {
                $row = mysqli_fetch_assoc($result);
                $hash = $row["password"];
                $verify = password_verify($password, $hash);
                //echo "<br>".$row["password"];
                //echo $verify;
                if ($verify) {
                        session_start();
                        $_SESSION['loggin'] = true;
                        $_SESSION['username'] = $row["name"];
                        $_SESSION['dbname'] = $row['dbname'];
                        header("location: test2.php");
                }
                else{
                    $error = true;
                }
            }
            else{
                $error1 = true;
            }

?>