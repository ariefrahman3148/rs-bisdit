<!doctype html>
<html lang="en">

<head>
	<!-- Required meta tags -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<!-- Icon FontAwesome -->
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
	
	<!-- Bootstrap core CSS -->
	<link href="<?php echo base_url('asset/bootstrap/css/bootstrap.css') ?>" rel="stylesheet">
	<!-- W3 CSS -->
	<link href="<?php echo base_url('asset/bootstrap/css/w3.css') ?>" rel="stylesheet">

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.1/jquery.validate.min.js"></script>
	<title>
		<?php echo $judul; ?>
	</title>
	
	<style>
	 label > input{ /* Menyembunyikan radio button */
          visibility: hidden; 
          position: absolute; 
        }
        label > input + img{ /* style gambar */
          cursor:pointer;
          border:2px solid transparent;
        }
        label > input:checked + img{ /* (RADIO CHECKED) style gambar */
          border:2px solid #f00;
        }

		.likert ul
    {
        list-style-type: none;
        margin: 0;
        padding: 0;
    }

    .likert li
    {
        float: left;
        text-align: left;
        list-style-type: none;
    }
	</style>
</head>

<body style="max-width:1600px; min-height:100vh">

	
