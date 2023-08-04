<?php
include"dbconfig.php";
if(isset($_REQUEST['okay']))
{
	extract($_REQUEST);
header("location:search.php?city=$city&cat=$category");
	}
	
	
if(isset($_REQUEST['booknow']))
{
	extract($_REQUEST);
	echo $q="INSERT INTO `booking`(`work`, `city`, `name`, `mobile`, `address`, `date`,`reg_id`, `status`)  VALUES 
	('$cat','$city','$name','$mobile','$address','$date','$regid','0')";
	$n=iud($q);
#if($n==1)
	#{
		echo'<script>alert("Booking Success We Will Contact You Very Soon");
		window.location="index.php?city='.$city.'&cat='.$cat.'";</script>';
	#}
}	

if(isset($_REQUEST['sendmsg']))
 {
	extract($_REQUEST);
 	echo $q="INSERT INTO `contact`(`cname`,`cemail`,`cmobile`,`cmessage`)  VALUES 
 	('$cname','$cemail','$cno','$cmsg')";
 	$n=iud($q);
 	if($n==1)
 	{
 		echo"<script>alert('Thank you for your feedback, we will contact you very soon!');
 		window.location='index.php';</script>";
 	}
 }	


if(isset($_REQUEST['login']))
	{
		
	$email=trim($_REQUEST['email']);
	$password=trim($_REQUEST['password']);
	
	$valid=true;
	$query="select * from registration where email='$email' and password='$password'";
	
	
	if($valid)
	{
	$login_data=select($query);
	echo $n=mysqli_num_rows($login_data);
	if($n==1)
	{
		while($data=mysqli_fetch_array($login_data))
		{
		extract($data);
		$_SESSION['id']=$id;
		header("location:mybooking.php?id=$id");
		}
		
		
	}
	else
	{
		echo"email or password is incorrect";
	}
	}
		
	}
    


	
	
	
	
	
	
	
	
	
	
	
	
	
	
	?>