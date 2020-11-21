
<?php $this->load->view("template/nav.php") ?>

<div class="container-fluid p-0 m-0">
	<div class='w3-display-container w3-2017-navy-peony navv w3-animate-top' style="height:4em">
	
	</div>

	<div class="container-fluid px-5 my-4 w3-animate-opacity">
		<div class="h3 my-3 w3-hide-medium w3-hide-small"><b>Let's make your plan!</b></div>
		<div class="row">
			<div class="col-lg-4 mt-2 w3-hide-medium w3-hide-small">
				<div class="h5 p-0 m-0 mb-2"><b>Introduce yourself</b></div>
				<div class="w3-card w3-round-xlarge p-3 ">
				<form name="add" action="<?php echo base_url('recommendation/post') ?>" method="post"
			enctype="multipart/form-data">
					<!-- nama -->
					<div class="form-group row nama px-3">
							<label for="nama p-0 m-0">Name</label>
							<input type="text" class=" form-control" id="nama" placeholder="nama">
					</div>

					<!-- email -->
					<div class="form-group row email px-3">
							<label for="email p-0 m-0">Email</label>
							<input type="text" class=" form-control" id="email" placeholder="your@email.com">
					</div>

					
					<div class="row p-0 m-0">
						<!-- gender -->
						<div class="form-group gender col-lg-6 p-0 px-1 m-0 mt-4">
								<label for="gender">Gender</label>
						
								<select class="form-control" id="gender" name="gender">
									<option value='Female'>Female</option>
									<option value='Male'>Male</option>
								</select>
						</div>

						<!-- age -->
						<div class="form-group usia col-lg-6 p-0 px-1 m-0 mt-4">
								<label for="age">Age</label>
						
								<select class="form-control" id="age" name="age">
									<option value='15 to 18'>15 to 18</option>
									<option value='19 to 25'>19 to 25</option>
									<option value='26 to 30'>26 to 30</option>
									<option value='31 to 39'>31 to 39</option>
									<option value='40 and above'>40 and above</option>
								</select>
						</div>

					</div>

					<div class="row p-0 m-0">
						<!-- level -->
						<div class="form-group level col-lg-6 p-0 px-1 m-0 mt-4">
								<label for="level">Current Level Fitness</label>
						
								<select class="form-control" id="level" name="level">
									<option value='Perfect'>Perfect</option>
									<option value='Very good'>Very good</option>
									<option value='Good'>Good</option>
									<option value='Average'>Average</option>
									<option value='Unfit'>Unfit</option>
								</select>
						</div>

						<!-- often -->
						<div class="form-group often col-lg-6 p-0 px-1 m-0 mt-4">
								<label for="often">How often do you exercise?</label>
						
								<select class="form-control" id="often" name="often">
									<option value='1 to 2 times a week'>1 to 2 times a week</option>
									<option value='3 to 4 times a week'>3 to 4 times a week</option>
									<option value='5 to 6 times a week'>5 to 6 times a week</option>
								</select>
						</div>

					</div>

					<div class="row p-0 m-0">
						<!-- motiv -->
						<div class="form-group motiv col-lg-6 p-0 px-1 m-0 mt-4">
								<label for="motiv">What motivate you to exercise?</label>
						
								<select class="form-control" id="motiv" name="motiv">
									<option value='I want to be fit'>I want to be fit</option>
									<option value='I want to lose weight'>I want to lose weight</option>
									<option value='I want to be flexible'>I want to be flexible</option>
									<option value='I want to increase muscle mass and strength'>I want to increase muscle mass and strength</option>
									<option value='I want to relieve stress'>I want to relieve stress</option>
								</select>
						</div>

						<!-- diet -->
						<div class="form-group diet col-lg-6 p-0 px-1 m-0 mt-4">
								<label for="diet">Are you eating healthy balanced diet?</label>
						
								<select class="form-control" id="diet" name="diet">
									<option value='Not always'>Not always</option>
									<option value='No'>No</option>
									<option value='Yes'>Yes</option>
								</select>
						</div>

					</div>
					
					<div class="col-lg-12 mt-4 text-center">
					<button class="btn w3-button w3-2017-navy-peony col-md-12 py-2 " type="submit" >Show my recommendation</button>
					</div>
					
					
				</div>
			</div>
			<div class='col-lg-8 pb-4 mt-2 '>
				<div class="h5 p-0 m-0 mb-2"><b>Your Recommendation</b></div>
				<div class="w3-card w3-round-xlarge p-5 w3-2017-navy-peony h-100">
				<?php if($top3 !=null): ?>
					<?php
						$i = 1;
						foreach($top3 as $d): ?>
					<div class='row my-2'>
						<h1 class='p-0 m-0 w3-jumbo col-md-3'><b>#<?php echo $i; ?></b></h1>
						<div class='p-0 m-0 col-md-9 row bg-secondary w3-round-large'>
							<div class="p-0 m-0 col-md-4"><img src="<?php echo $d->link; ?>" alt="" width="168px" height="128px" class='p-0 m-0'></div>
							<div class="col-md-8 p-0 m-0 w3-display-container">
								<h4><?php echo $d->olahraga; ?></h4>
								<p><?php echo $d->lama; ?></p>
							</div>
						</div>
					</div>
					<?php $i++; ?>
					<?php endforeach; ?>
					<?php else : ?>
					Maaf kami belum bisa menampilkan rekomendasi untuk anda
				<?php endif; ?>
					
					
					<!-- <h5 class='w3-xlarge'>please, input your preference!</h5> -->
				</div>
			</div>


		</div>
	</div>
	
</div>
