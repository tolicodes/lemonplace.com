<?php 
include 'includes/config.php';

if(isset($_POST)) {
	$array = [];
	switch ($_POST['ajax_type']) {
		case 'projectImages':
			$array['projectID'] = $_POST['projectID'];
			// get the project images
			$array['images'] = projectImages($_POST['projectID']);
			break;

		case 'adminProjectImages':
			$array['projectID'] = $_POST['projectID'];
			// get the project images
			$array['images'] = adminProjectImages($_POST['projectID']);
			break;

		case 'contact':
			$message = '';

			if(isset($_POST['fname'])) $message .= '<strong>First Name</strong> - '.$_POST['fname'].'<br>';
			if(isset($_POST['lname'])) $message .= '<strong>Last Name</strong> - '.$_POST['lname'].'<br>';
			if(isset($_POST['email'])) $message .= '<strong>Email</strong> - '.$_POST['email'].'<br>';
			if(isset($_POST['company'])) $message .= '<strong>Company</strong> - '.$_POST['company'].'<br>';
			if(isset($_POST['timeframe'])) $message .= '<strong>Timeframe</strong> - '.$_POST['timeframe'].'<br>';
			if(isset($_POST['budget'])) $message .= '<strong>Budget</strong> - '.$_POST['budget'].'<br>';
			if(isset($_POST['message'])) $message .= '<strong>Message</strong><br>'.$_POST['message'].'<br>';

			$to = 'info@lemonplace.com';
			$subject = 'LemonPlace.com';
			$headers  = 'MIME-Version: 1.0' . "\r\n";
			$headers .= 'Content-type: text/html; charset=iso-8859-1' . "\r\n";
			$headers .= 'From: '.$name.' <'.$email.'>' . "\r\n";

			mail($to, $subject, $message, $headers, '-f info@lemonplace.com');

			$array['success'] = true;
			$array['message'] = $message;
			$array['response'] = '<h1>Thank you for contacting us!</h1> <p>We appreciate your interest in Lemon Place Creative.<br>A member of our Graphic Design Team will be contacting you shortly.</p>';
			break;

		case 'project_images':
			$allowed = ['jpg', 'png', 'gif'];
			$uploaded = [];
			$failed = [];
			if(!empty($_FILES['images'])) {
				foreach ($_FILES['images']['name'] as $key => $name) {
					if($_FILES['images']['error'][$key] == 0) {
						$temp = $_FILES['images']['tmp_name'][$key];

						$ext = explode('.', $name);
						$ext = strtolower(end($ext));

						$image = md5_file($temp).time().'.'.$ext;

						if(in_array($ext, $allowed)) {
							if(move_uploaded_file($temp, 'images/portfolio/'.$image)) {
								if($ext != 'gif') {
									resize('images/portfolio/'.$image, 700, 1000, 80);
								}
								$uploaded[] = $image;
							} else {
								$failed[] = $image;
							}
						}
					}
				}
				$array['uploaded'] = $uploaded;
				$array['failed'] = $failed;
			}
			break;

		case 'project':
			$projectID = '';
			$title = '';
			$url = '';
			$description = '';
			$categories = '';
			$images = '';
			$show = '';
			$captions = '';

			if(isset($_POST['project'])) $projectID = $_POST['project'];
			if(isset($_POST['title'])) $title = $_POST['title'];
			if(isset($_POST['url'])) $url = $_POST['url'];
			if(isset($_POST['description'])) $description = $_POST['description'];
			if(isset($_POST['category'])) $categories = $_POST['category'];
			if(isset($_POST['images'])) $images = $_POST['images'];
			if(isset($_POST['show'])) $show = $_POST['show'];
			if(isset($_POST['captions'])) $captions = $_POST['captions'];
			if(isAdmin()) {
				$array = project($projectID, $title, $url, $description, $categories, $images, $show, $captions);
			}
			break;

		case 'deleteProject':
			$projectID = $_POST['projectID'];
			if(isAdmin()) {
				$array = deleteProject($projectID);
			}
			break;
	}

	echo json_encode($array);
}
?>