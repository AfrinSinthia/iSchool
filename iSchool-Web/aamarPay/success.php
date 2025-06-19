<?php
include('../dbConnection.php');

if($_POST['pay_status']=="Successful"){
    $merTxnId= $_POST['mer_txnid'];
	
}

$store_id = "aamarpaytest";  // You have to use your Store ID / MerchantID here
$signature_key="dbb74894e82415a2f7ff0ec3a97e4183"; // Your have to use your signature key here ,it will be provided by aamarPay
$url = "https://sandbox.aamarpay.com/api/v1/trxcheck/request.php?request_id=$merTxnId&store_id=$store_id&signature_key=$signature_key&type=json"; //sandbox
//$url = "https://secure.aamarpay.com/api/v1/trxcheck/request.php?request_id=$merTxnId&store_id=$store_id&signature_key=$signature_key&type=json"; //live url
        
$curl_handle=curl_init();
curl_setopt($curl_handle,CURLOPT_URL,$url);

curl_setopt($curl_handle, CURLOPT_VERBOSE, true);
curl_setopt($curl_handle, CURLOPT_RETURNTRANSFER, true);
curl_setopt($curl_handle, CURLOPT_SSL_VERIFYPEER, false);
$buffer = curl_exec($curl_handle);
curl_close($curl_handle);
$a = (array)json_decode($buffer);

$stu_email = $a['cus_email'];
$course_id = $a['cus_phone'];
$pay_status = $a['pay_status'];
$payment_type = $a['payment_type'];
$amount = $a['amount'];
$date = $a['date'];
$sql = "INSERT INTO courseorder(order_id, stu_email, course_id, pay_status, payment_type, amount, order_date) VALUES ('$merTxnId', '$stu_email', '$course_id', '$pay_status', '$payment_type', '$amount', '$date')";	
if($conn->query($sql) == TRUE){
	    echo "Redirecting to My Courses....";
	    echo "<script> setTimeout(() => {
	    window.location.href = '../student/myCourses.php';
	    }, 1500); </script>";
	};

?>