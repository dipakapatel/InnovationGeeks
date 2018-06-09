<?php
 include 'db_connect.php';

                    // Check connection
                    if (mysqli_connect_errno())
                      {
                      echo "Failed to connect to MySQL: " . mysqli_connect_error();
                      }
                      $theVariable = array();

                    $query="SELECT `status`, count(`status`) as total_number FROM `detailed_req` GROUP by `status`;"; 
                    
                    echo "----------------------------------------------";
                    
                   $result = $con->query($query);
                    while ($row = $result->fetch_array()) {
                        printf("'%s'='%s'\n", $row['status'], $row['total_number']);
                        #$numbers[]= array($row['status']=>$row['total_number']);
                        $theVariable[$row['status']] = $row['total_number'];
                        
                    }
                    echo"-----------------------------------------";

                    $row[] = $result->fetch_array();
                    print_r($theVariable);

                     echo"-----------------------------------------";


                      echo $theVariable[0];
                    ?>