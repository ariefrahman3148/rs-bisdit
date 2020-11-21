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
  <link rel="stylesheet" href="https://www.w3schools.com/lib/w3-colors-2017.css">
  
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.1/jquery.validate.min.js"></script>
	<title>
		Project FIT
	</title>
	
	<style>
@import url('https://fonts.googleapis.com/css2?family=Inter:wght@400;900&display=swap');

  body{
    font-family: 'Inter', sans-serif;
  }

  .w3-blue{
    background-color:#19325B;
  }

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
    .inner{
      background-color: black;

    }
    .inner img {
      opacity: 0.8;
      
    }
      .navv{
         border-radius: 0px 0px 30px 30px;
        -moz-border-radius: 0px 0px 30px 30px;
        -webkit-border-radius: 0px 0px 30px 30px;
      }

    @media (min-width: 900px){

      .h1{
        font-size:64px;
      }
      .inner {
        border-radius: 0px 0px 30px 30px;
        -moz-border-radius: 0px 0px 30px 30px;
        -webkit-border-radius: 0px 0px 30px 30px;
      }
      .inner img {
        opacity: 1;
        width: 100%;
        max-height:85vh;

        border-radius: 0px 0px 200px 200px;
        -moz-border-radius: 0px 0px 200px 200px;
        -webkit-border-radius: 0px 0px 200px 200px;
        }
    }
    
	</style>
</head>

<body style="max-width:1600px; min-height:100vh">

	
