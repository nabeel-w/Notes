<?php
session_start();
echo $_SESSION['dbname'];
session_destroy();
echo $_SESSION['dbname'];
?>