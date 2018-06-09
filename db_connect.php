 
 <?php
$host='localhost';
$user='dipak';
$psw='123';
$db_name='reimbursement';

$con=mysqli_connect($host,$user,$psw,$db_name);
                    // Check connection
                    if (mysqli_connect_errno())
                      {
                      echo "Failed to connect to MySQL: " . mysqli_connect_error();
                      }
                      


?>