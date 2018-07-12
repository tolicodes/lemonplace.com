<?php 


if($_POST) {
	
	$expected = array('name', 'company', 'email', 'phone', 'message');
	$validation = array(
		'name' => 'Please provide your name',
		'email' => 'Please provide a valid email address',
		'message' => 'Please type a message'
	);


	$errors = array();
	$output = array();

	foreach ($expected as $key) {
		if(array_key_exists($key, $_POST)) {

			if(empty($_POST[$key])) {
				// posted variable is empty
				if(array_key_exists($key, $validation)) {
					$errors[$key] = $validation[$key];
				}
			} else {
				if($key == 'email') {
					if(!filter_var($key, FILTER_VALIDATE_EMAIL)) {
						$output[$key] = $_POST[$key];
					} else {
						$errors[$key] = $validation[$key];
					}
				} else {
					$output[$key] = $_POST[$key];
				}
				
			}

		} else {
			if(array_key_exists($key, $validation)) {
				$errors[$key] = $validation[$key];
			}
		}
	}

	if(!empty($errors)) {
		$array = array('error' => true, 'fields' => $errors);
	} else {

		// process form
		$name = $output['name'];
		$email = $output['email'];

		$message = '';

		foreach ($output as $key => $value) {
			$message .= '<strong>'.$key.'</strong> - '.$value.'<br>';
		}



		$to = 'info@lemonplace.com';
		$subject = 'LemonPlace.com';
		$headers  = 'MIME-Version: 1.0' . "\r\n";
		$headers .= 'Content-type: text/html; charset=iso-8859-1' . "\r\n";
		$headers .= 'From: '.$name.' <'.$email.'>' . "\r\n";

		mail($to, $subject, $message, $headers, '-f admin@cursorblue.com');

		$response = '<h1>Thank you for contacting us!</h1> <p>We appreciate your interest in Lemon Place Creative.<br>A member of our Graphic Design Team will be contacting you shortly.</p>';
		$array = array('error' => false, 'response' => $response);

	}

	echo json_encode($array);
}

?>