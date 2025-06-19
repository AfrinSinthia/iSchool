<?php
if(!isset($_POST['cus_name'])){
    echo "Direct access restricted";
    exit();
}

$order_id = $_POST['ORDER_ID']; // Transection id need to be unique for each successful transection.
$fullName=$_POST['cus_name'];
$email=$_POST['cus_email'];
$currency="BDT";
$amount=$_POST['amount'];
$course_id=$_POST['course_id'];
$store_id = "aamarpaytest";  // You have to use your Store ID / MerchantID here
$signature_key="dbb74894e82415a2f7ff0ec3a97e4183"; // Your have to use your signature key here ,it will be provided by aamarPay

$url = 'https://sandbox.aamarpay.com/jsonpost.php'; //sandbox
// $url = 'https://secure.aamarpay.com/jsonpost.php'; //live url
$curl = curl_init();

$baseUrl = (isset($_SERVER['HTTPS']) && $_SERVER['HTTPS'] === 'on' ? "https" : "http");
$baseUrl .= "://".$_SERVER['HTTP_HOST'];

$success_url = $baseUrl . "/aamarPay/success.php";
$fail_url = $baseUrl . "/index.php";
$cancel_url = $baseUrl . "/index.php";

curl_setopt_array($curl, array(
  CURLOPT_URL => $url,
  CURLOPT_RETURNTRANSFER => true,
  CURLOPT_ENCODING => '',
  CURLOPT_MAXREDIRS => 10,
  CURLOPT_TIMEOUT => 0,
  CURLOPT_FOLLOWLOCATION => true,
  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
  CURLOPT_CUSTOMREQUEST => 'POST',
  CURLOPT_POSTFIELDS => json_encode([
    "store_id" => $store_id,
    "tran_id" => $order_id,
    "success_url" => $success_url,
    "fail_url" => $fail_url,
    "cancel_url" => $cancel_url,
    "amount" => $amount,
    "currency" => $currency,
    "signature_key" => $signature_key,
    "desc" => "Merchant Registration Payment",
    "cus_name" => $fullName,
    "cus_email" => $email,
    "cus_add1" => "",
    "cus_add2" => "",
    "cus_city" => "",
    "cus_state" => "",
    "cus_postcode" => "",
    "cus_country" => "Bangladesh",
    "cus_phone" => $course_id,
    "type" => "json"
]),
  CURLOPT_HTTPHEADER => array(
    'Content-Type: application/json'
  ),
));

$response = curl_exec($curl);

curl_close($curl);

$responseObj = json_decode($response);

if(isset($responseObj->payment_url) && !empty($responseObj->payment_url)) {

  $paymentUrl = $responseObj->payment_url;
  header('Location: '. $paymentUrl);
  exit();
    
}else{
    echo $response;
}

?>