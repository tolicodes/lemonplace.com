<?php 

function isAdmin() {
	global $db;
	if(isset($_SESSION['LP_ADMIN']) && $_SESSION['LP_ADMIN'] == LP_ADMIN) {
		return true;
	} else {
		unset($_SESSION['LP_ADMIN']);
		return false;
	}
}

function projects() {
	global $db;

	$getProjects = $db->query("SELECT 
		portfolio.*,
		portfolio_images.image as image
		,(SELECT
			GROUP_CONCAT(portfolio_categories.category)
			FROM portfolio_categories
			WHERE portfolio_categories.portfolio_id = portfolio.id
		) as categories
		FROM portfolio
		INNER JOIN portfolio_images
			ON portfolio.id = portfolio_images.project
			AND portfolio_images.sort = 1
		ORDER BY id DESC
	");
	return $getProjects->fetchAll(PDO::FETCH_ASSOC);
}


function projectImages($projectID) {
	global $db;

	$getImages = $db->prepare("SELECT
		image, caption
		FROM portfolio_images
		WHERE project = :projectID
		AND `show` = 1
		ORDER BY `sort`
	");

	$getImages->execute([
		'projectID' => $projectID
	]);

	return $getImages->fetchAll(PDO::FETCH_ASSOC);
}

function adminProjectImages($projectID) {
	global $db;

	$getImages = $db->prepare("SELECT
		`image`, `caption`, `show`, `sort`
		FROM portfolio_images
		WHERE project = :projectID
		ORDER BY `sort`
	");

	$getImages->execute([
		'projectID' => $projectID
	]);

	return $getImages->fetchAll(PDO::FETCH_ASSOC);
}


function designers() {
	global $db;
	$getDesigners = $db->query("SELECT * FROM designers");
	return $getDesigners->fetchAll(PDO::FETCH_ASSOC);
}

function project($projectID, $title, $url, $description, $categories, $images, $show, $captions) {
	global $db;
	$array = [];
	$newProject = $db->prepare("INSERT INTO
		portfolio
		(`title`, `url`, `description`)
		VALUES
		(:title, :url, :description)
	");

	$updateProject = $db->prepare("UPDATE
		portfolio
		SET `title` = :title,
		`url` = :url,
		`description` = :description
		WHERE id = :projectID
		LIMIT 1
	");

	$insertCategory = $db->prepare("INSERT INTO
		portfolio_categories
		(`portfolio_id`, `category`)
		VALUES
		(:projectID, :category)
	");

	$insertImage = $db->prepare("INSERT INTO
		portfolio_images
		(`project`, `image`, `caption`, `show`, `sort`)
		VALUES
		(:projectID, :image, :caption, :show, :sort)
	");

	$deleteCategories = $db->prepare("DELETE FROM
		portfolio_categories
		WHERE `portfolio_id` = :projectID
	");

	$deleteImages = $db->prepare("DELETE FROM
		portfolio_images
		WHERE `project` = :projectID
	");




	if($projectID) {
		// update project
		$updateProject->execute([
			'projectID' => $projectID,
			'title' => $title,
			'url' => $url,
			'description' => $description
		]);


		$deleteCategories->execute([
			'projectID' => $projectID
		]);

		$deleteImages->execute([
			'projectID' => $projectID
		]);

	} else {
		// new project
		$newProject->execute([
			'title' => $title,
			'url' => $url,
			'description' => $description
		]);
		$projectID = $db->lastInsertId();
	}


	// insert the categories
	if($categories != '' && count($categories)) {
		foreach ($categories as $category) {
			$insertCategory->execute([
				'projectID' => $projectID,
				'category' => $category
			]);
		}
	}

	// insert the images
	for ($i=0; $i < count($images); $i++) { 
		$insertImage->execute([
			'projectID' => $projectID,
			'image' => $images[$i],
			'caption' => $captions[$i],
			'show' => $show[$i],
			'sort' => $i + 1
		]);
	}

	$array['success'] = true;
	$array['projectID'] = $projectID;
	$array['categories'] = $categories;


	return $array;
}

function deleteProject($projectID) {
	global $db;
	$array = [];

	$deleteCategories = $db->prepare("DELETE FROM
		portfolio_categories
		WHERE `portfolio_id` = :projectID
	");

	$deleteImages = $db->prepare("DELETE FROM
		portfolio_images
		WHERE `project` = :projectID
	");

	$deleteProject = $db->prepare("DELETE FROM
		portfolio
		WHERE id = :projectID
		LIMIT 1
	");

	$deleteCategories->execute([
		'projectID' => $projectID
	]);

	$deleteImages->execute([
		'projectID' => $projectID
	]);

	$deleteProject->execute([
		'projectID' => $projectID
	]);

	$array['success'] = true;

	return $array;
}

function resize($target, $width, $height, $quality = 80) {
	list($width_o, $height_o) = getimagesize($target);
	$scale = $width_o / $height_o;

	if(($width / $height) > $scale) {
		$width = $height * $scale;
	} else {
		$height = $width / $scale;
	}

	$ext = explode('.', $target);
	$ext = strtolower(end($ext));

	$img = '';
	if($ext == 'gif') {
		$img = imagecreatefromgif($target);
	} else if($ext == 'png') {
		$img = imagecreatefrompng($target);
	} else {
		$img = imagecreatefromjpeg($target);
	}

	$tci = imagecreatetruecolor($width, $height);

	imagecopyresampled($tci, $img, 0, 0, 0, 0, $width, $height, $width_o, $height_o);
	imagejpeg($tci, $target, $quality);
}
?>