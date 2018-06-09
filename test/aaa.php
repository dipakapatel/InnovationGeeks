<?php
include 'db_connect.php';

 $sql = 'SELECT COUNT(flag) as dipak  FROM detailed_req where flag=0';
 if ($result=mysqli_query($con,$sql))
  {
  while ($obj=mysqli_fetch_object($result))
    {
    echo $obj->dipak;    
    }
  // Free result set
  mysqli_free_result($result);
}
?>