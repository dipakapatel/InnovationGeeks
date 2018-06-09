<?php

if(isset($_REQUEST['detail_id']))
{
	$detail_id=$_REQUEST['detail_id'];
	$status=$_REQUEST['status'];

	include 'db_connect.php';
	 $sql="UPDATE detailed_req SET status='$status', flag=1 where detail_id='$detail_id'";
     
     if ($con->query($sql) === TRUE) 
    {
    	$sql2="SELECT * FROM `detailed_req` as a, `employee` as e, `category` as c WHERE a.emp_id =e.emp_id and a.detail_id= 18 and a.cat_id=c.cat_id ";
    	echo "0";
	} 
	else
	{
    	echo "1";
	}
}

if(isset($_REQUEST['emp_id']))
{
	$emp_id=$_REQUEST['emp_id'];
	$status=$_REQUEST['status'];
	if($status==0)
	{
		$status=1;
	}
	else{
		$status=0;
	}
	include 'db_connect.php';
	 $sql="UPDATE employee SET status='$status' where emp_id='$emp_id'";
     
     if ($con->query($sql) === TRUE) 
    {
    	echo "0";
	} 
	else
	{
    	echo "1";
	}
}
?>