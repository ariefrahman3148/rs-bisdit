<script>
$(document).ready(function(){
	$(function(){
		$("form[name='add']").validate({
			rules: {
				jenis_kelamin: "required",
      			kebugaran: "required",
      			
			},
			messages: {
				jenis_kelamin: "",
      			
      			kebugaran: "",
      			

			},
			invalidHandler: function(event, validator) {
				// 'this' refers to the form
				var errors = validator.numberOfInvalids();
				if (errors) {
				var message = 'Mohon isi dengan benar';
				$("div.error span").html(message);
				$("div.error").show();
				} else {
				$("div.error").hide();
				}
			},
			submitHandler: function(form) {
      			form.submit();
    		}
		});
	});
});

</script>


<div class="container-fluid m-0 p-0 w3-animate-opacity">
	<div class='row col-lg-12 p-0 m-0'>
		<div class='col-lg-6  w3-display-container m-0 w3-black m-0 p-0' style="height:100vh">
			<img src="<?php echo base_url('asset/images/angkat.jfif')?>" class='w3-opacity w3-display-' alt="" style= " height:100vh">
			<div class="w3-display-middle h2 text-right mr-n5">FITNESS RECOMMENDATION</div>
		</div>
		<div class='col-lg-6 m-0 pt-5 px-3 w3-white'>
		<form class='col-lg-10 mx-auto' name="add" action="<?php echo base_url('welcome/post') ?>" method="post"
			enctype="multipart/form-data">
			<div class='h5 py-2 m-3'>Pilih Preferensi</div>

	<div class="card p-5">
			<div class='error text-center mb-3 text-danger'>
				<span></span>
			</div>
			<!-- nama -->
			<!-- <div class="form-group row nama">
					<label for="nama">Nama (boleh tidak diisi)</label>
					<input type="text" class="form-control" id="nama" placeholder="nama">
			</div> -->

			<!-- end nama -->

			<!-- usia -->
			<div class="form-group usia">
					<label for="usia"><b>Usia</b></label>
			
					<select class="form-control" id="usia" name="usia">
						<option value='15 hingga 18'>15 hingga 18</option>
						<option value='19 hingga 25'>19 hingga 25</option>
						<option value='26 hingga 30'>26 hingga 30</option>
						<option value='31 hingga 39'>31 hingga 39</option>
						<option value='40 ke atas'>40 ke atas</option>
					</select>

			</div>
			<!-- end usia -->

			<!-- jenis kelamin -->
			<div class='form-group kelamin'>
				<label><b> Jenis Kelamin </b></label>
				<br>
				<div class="d-flex justify-content-around ">
					<label>
						<input type="radio" name="jenis_kelamin" id="Pria" value="Pria">
						<img src="https://www.w3schools.com/howto/img_avatar.png" alt="Avatar" style="width:50%" class="w3-circle ">
					</label>
					<label>
						<input type="radio" name="jenis_kelamin" id="Wanita" value="Wanita">
						<img src="https://www.w3schools.com/howto/img_avatar2.png" alt="Avatar" style="width:50%" class="w3-circle ">
					</label>	
				</div>
							
			</div>
			<!-- end jenis kelamin -->

			<!-- kebugaran -->
			<div class="form-group kebugaran mb-3">
				
				<label for="kebugaran"><b>Tingkat kebugaran</b></label>
			<br>
				<ul class="likert">
					<li class="likert"> Kurang Fit <input id="kebugaran" type="radio" name="kebugaran" value="Kurang Fit" />
					<li class="likert"><input type="radio" name="kebugaran" value="Rata-Rata" />
					<li class="likert"><input type="radio" name="kebugaran" value="Baik" />
					<li class="likert"><input type="radio" name="kebugaran" value="Sangat Baik" />
					<li class="likert"><input id="kebugaran" type="radio" name="kebugaran" value="Sempurna" /> Sempurna
				</ul>
			<br>
			</div>
			<!-- end kebugaran -->

			<!-- motivasi -->
			<div class="form-group motivasi">
					<label for="motivasi"><b>Apa motivasi Anda untuk melakukan olahraga?</b></label>
			
					<select class="form-control" id="motivasi" name="motivasi">
						<option value='Saya ingin menjadi lebih fit'>Saya ingin menjadi lebih fit</option>
						<option value='19 hingga 25'>Saya ingin meningkatkan massa otot dan kekuatan</option>
						<option value='Saya ingin menjadi lebih fleksibel'>Saya ingin menjadi lebih fleksibel</option>
						<option value='31 hingga 39'>Saya ingin melepas stress</option>
						<option value='40 ke atas'>Saya ingin menurunkan berat badan</option>
					</select>

			</div>
			<!-- end motivasi -->

			<div class='col-lg-12 text-center'>
				<button class="btn btn-primary my-1 col-lg-3">Submit</button>
			</div>

			</div>
		</form>
		</div>
	</div>
	
	<!-- <div class='text-center jumbotron'><h4>Fitness Recommendation</h4></div> -->
	
</div>

