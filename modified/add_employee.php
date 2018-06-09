
<?php include 'header.php';?>

<?php include 'left_sidebar.php';?>

<!-- Page wrapper  -->
        <div class="page-wrapper">
            <!-- Bread crumb -->
            <div class="row page-titles">
                <div class="col-md-5 align-self-center">
                    <h3 class="text-primary">Employee</h3> </div>
                <div class="col-md-7 align-self-center">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="javascript:void(0)">Add</a></li>
                        <li class="breadcrumb-item active">Employee</li>
                    </ol>
                </div>
            </div>
            <!-- End Bread crumb -->


<div class="container-fluid">
                <!-- Start Page Content -->
                
                
                    <div class="col-lg-12">
                        <div class="row">
                    <div class="col-lg-12">
                        <div class="card card-outline-primary">
                            <div class="card-header">
                                <h4 class="m-b-0 text-white">Add New Employee</h4>
                            </div>
                            <div class="card-body">
                                <form  action="add_employee.php" method="post"  class="form-valide" enctype="multipart/form-data">
                                    <div class="form-body">
                                        <h3 class="card-title m-t-15">Personal Info</h3>
                                        <hr>
                                        <div class="row col-lg-12">
                                            <div class="col-md-6">
                                                <div class="form-group has-success">
                                                    <label >Full Name</label>
                                                    <input type="text" id="name" name="name" class="form-control"  />
                                                </div>
                                          
                                            <!--/span-->
                                           
                                      
                                        </div>
                                        <!--/row-->
                                        
                                            <div class="col-md-6">
                                                <div class="form-group has-success">
                                                    <label>Department</label>
                                                    <select class="form-control custom-select" name="department" >
                                                        
                                                        <option value="Development">Development</option>
                                                        <option value="Marketing">Marketing</option>
                                                        <option value="HRM">Human Resource Managment</option>
                                                        <option value="Accounting and Finance">Accounting and Finance</option>
                                                    </select>
                                                     </div>
                                            </div>
                                        </div>
                                            
                                            <!--/span-->
                                            <div class="row col-lg-12">
                                            <div class="col-md-6">

                                                <div class="form-group has-success">
                                                    <label >Email Id</label>
                                                    <input type="email" name="email" id="email" class="form-control"/>
                                                    </div>
                                            </div>
                                          
                                            <!--/span-->
                                           
                                            <div class="col-md-6">
                                                <div class="form-group has-success">
                                                    <label >Username</label>
                                                    <input type="text" name="username" id="username" class="form-control"/>
                                                     </div>
                                            </div>
                                            <!--/span-->                                           
                                         </div>
                                      
                                        <div class="row col-lg-12">
                                            <div class="col-md-6">
                                                <div class="form-group has-success">
                                                    <label >Password</label>
                                                    <input type="password" name="password" id="password" class="form-control"/>
                                                     </div>
                                            </div>
                                            <!--/span-->                                           
                                       
                                        
                                            <div class="col-md-6">
                                                <div class="form-group has-success">
                                                    <label >Re-enter Password</label>
                                                    <input type="password" name="re_password" id="re_password" class="form-control"/>
                                                     </div>
                                            </div>
                                            <!--/span-->                                           
                                       </div>
                                        
                                        <div class="row col-lg-12">
                                            <div class="col-md-6">
                                                <div class="form-group has-success">
                                                    <label >Employee Role</label>
                                                    <input type="text" name="role" id="role" class="form-control"/>
                                                     </div>
                                            </div>
                                            <!--/span-->                                           
                                       
                                        </div>
                                        <div class="row col-lg-12">
                                            <div class="col-md-6">
                                                <div class="form-group has-success">
                                                    <label >Upload Image file </label>
                                                    <input type="file" name="file"
                                                       id="file" />
                                                    
                                                     </div>
                                            </div>
                                            <!--/span-->                                           
                                       
                                        </div>
                                        <!--/row-->
                                        
                                    </div>
                                    <div class="form-actions">
                                        <button type="submit" class="btn btn-success" name="save" id="save">  <i class="fa fa-check"></i> Save</button>
                                        <button type="button" class="btn btn-inverse">Cancel</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>

                    
                </div>
                    </div>
                </div>


                

                <div>

                    Dynamic data display here

                    <?php
                      
                  if(isset($_REQUEST['save']))
                  {
                     $name=$_REQUEST['name'];
                     $department=$_REQUEST['department'];
                     $email=$_REQUEST['email'];
                     $uid=$_REQUEST['username'];
                     $psw=$_REQUEST['password'];
                     $role=$_REQUEST['role'];

                     //mysql_connect("localhost","root","") or die("could not connect to server".mysql_error());

                     //mysql_select_db("reimbursement") or die("could not fin to database");

                /*$sql="select * from admin where `username`='$unm' and `password`='$psw';";
                    $sql="INSERT INTO `employee` (`emp_id`, `emp_name`, `emp_department`, `email_id`, `userid`, `password`, `emp_role`, `status`) VALUES ('1010113', '$name', '$department', '$email', '$uid', '$psw', '$role', '0');";
                    $result=mysql_query($sql) or die("query error");
                    print("record inserted");

                */
                    $con=mysqli_connect("localhost","root","","reimbursement");
                    // Check connection
                    if (mysqli_connect_errno())
                      {
                      echo "Failed to connect to MySQL: " . mysqli_connect_error();
                      }

                    // Perform querie to retrive last employee id from Employee table
                    //mysqli_query($con,"SELECT max(`emp_id`) FROM `employee`");
                    $sql="SELECT max(`emp_id`) FROM `employee`";
                    if ($result=mysqli_query($con,$sql))
                      {
                      // Fetch one and one row
                      while ($row=mysqli_fetch_row($result))
                        {
                        $new_value=$row[0]+1;

                        }

                      // Free result set
                      mysqli_free_result($result);
                    }

                    if (!mysqli_query($con,"INSERT INTO `employee` (`emp_id`, `emp_name`, `emp_department`, `email_id`, `userid`, `password`, `emp_role`, `status`) VALUES ('$new_value', '$name', '$department', '$email', '$uid', '$psw', '$role', '0')"))
                      {
                      echo("Error description: " . mysqli_error($con));
                      }



                    


                    $sql_1="INSERT INTO `employee` (`emp_id`, `emp_name`, `emp_department`, `email_id`, `userid`, `password`, `emp_role`, `status`) VALUES ('$new_value', '$name', '$department', '$email', '$uid', '$psw', '$role', '0')";
                    $result1=mysqli_query($con,$sql_1) ;
                    print('recode inserted'.$new_value.' result'.$result1);
                    mysqli_close($con); 



                  }

                    ?>
                </div>


                <!-- End PAge Content -->
            </div>



<?php include 'footer.php';?>

















<?php
/*
INSERT INTO `employee` (`emp_id`, `emp_name`, `emp_department`, `email_id`, `userid`, `password`, `emp_role`, `status`) VALUES ('1010111', 'Dipak Patel', 'Marketing', 'dipakapatel777@gmail.com', 'dipakapatel', 'dap@777', 'employee', '0');

*/
?>