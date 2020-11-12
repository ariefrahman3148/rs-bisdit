<script>
$(document).ready(function(){
	$(function(){
		$("form[name='add']").validate({
			rules: {
				jenis_kelamin: "required",
      			usia: "required",
      			olahraha: "required",
      			kebugaran: "required",
      			lama: "required",
      			sering: "required",
      			usia: "required"
			},
			messages: {
				jenis_kelamin: "",
      			usia: "",
      			olahraha: "",
      			kebugaran: "",
      			lama: "",
      			sering: "",
      			usia: ""
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


<div class="container-fluid m-0 p-0">
	<div class='row col-lg-12 p-0 m-0'>
		<div class='col-lg-6 w3-display-container m-0 w3-green m-0 p-0'>
			<div class="w3-display-middle">Fitness Recommendation</div>
		</div>
		<div class='col-lg-6 m-0'>
		<form class='col-lg-10 mx-auto' name="add" action="<?php echo base_url('welcome/add') ?>" method="post"
			enctype="multipart/form-data">

			<div class='error text-center mb-3 text-danger'>
				<span></span>
			</div>
			<!-- nama -->
			<div class="form-group row nama">
				<div class="col-md-4 p-0 m-0">
					<label for="nama">Nama (boleh tidak diisi)</label>
				</div>
				<div class="col-md-8 p-0 m-0">
					<input type="text" class="form-control" id="nama" placeholder="nama">
				</div>
			</div>

			<!-- end nama -->

			<!-- jenis kelamin -->
			<div class='form-group row kelamin'>
				<div class='col-md-4 p-0 m-0'><label> Jenis Kelamin</label></div>
				<div class='form-group col-md-8 p-0 m-0'>
					<div class="form-check form-check-inline mr-5">
						<input class="form-check-input" type="radio" name="jenis_kelamin" id="Pria" value="Pria">
						<label class="form-check-label" for="Pria">Pria</label>
					</div>
					<div class="form-check form-check-inline">
						<input class="form-check-input" type="radio" name="jenis_kelamin" id="Wanita" value="Wanita">
						<label class="form-check-label" for="Wanita">Wanita</label>
					</div>

				</div>
			</div>
			<!-- end jenis kelamin -->

			<!-- usia -->
			<div class="form-group row usia">
				<div class="col-md-4 p-0 m-0">
					<label for="usia">Usia</label>
				</div>
				<div class="col-md-8 p-0 m-0">
					<select class="form-control" id="usia" name="usia">
						<option value='15 hingga 18'>15 hingga 18</option>
						<option value='19 hingga 25'>19 hingga 25</option>
						<option value='26 hingga 30'>26 hingga 30</option>
						<option value='31 hingga 39'>31 hingga 39</option>
						<option value='40 ke atas'>40 ke atas</option>
					</select>
				</div>
			</div>
			<!-- end usia -->

			<!-- kebugaran -->
			<div class="form-group row kebugaran">
				<div class="col-md-4 p-0 m-0">
					<label for="kebugaran">Tingkat kebugaran</label>
				</div>
				<div class="col-md-8 p-0 m-0">
					<select class="form-control" id="kebugaran" name="kebugaran">
						<option value="Kurang Fit">Kurang Fit</option>
						<option value="Rata-Rata">Rata-Rata</option>
						<option value="Baik"></option>
						<option value="Sangat Baik">Sangat Baik</option>
						<option value="Sempurna">Sempurna</option>
					</select>
				</div>
			</div>
			<!-- end kebugaran -->

			<!-- diet -->
			<div class='form-group row diet'>
				<div class='col-md-4 p-0 m-0'><label>Apakah Anda mengkonsumsi diet sehat?</label></div>
				<div class='col-md-8 p-0 m-0 form-group '>
					<div class="form-check form-check-inline">
						<input class="form-check-input" type="radio" name="diet" id="Ya" value="Ya">
						<label class="form-check-label" for="Ya">Ya</label>
					</div>
					<div class="form-check form-check-inline">
						<input class="form-check-input" type="radio" name="diet" id="Kadang-kadang" value="Kadang-kadang">
						<label class="form-check-label" for="Kadang-kadang">Kadang-kadang</label>
					</div>
					<div class="form-check form-check-inline">
						<input class="form-check-input" type="radio" name="diet" id="Tidak" value="Tidak">
						<label class="form-check-label" for="Tidak">Tidak</label>
					</div>
				</div>
			</div>
			<!-- end diet -->

			<!-- motivasi -->
			<div class='row mb-3 inline motivasi'>
				<div class="col-lg-4 p-0 m-0 h-100">
					<div class='align-middle'><label for="motivasi">Apa motivasi Anda untuk melakukan olahraga?</label></div>
				</div>
				<div class="col-lg-8 mx-auto ">
					<div class="form-check">
						<input class="form-check-input" type="checkbox" id="mtv1" value="Saya ingin menjadi lebih fit"
							name="motivasi[]">
						<label class="form-check-label" for="mtv1">
							Saya ingin menjadi lebih fit
						</label>
					</div>
					<div class="form-check">
						<input class="form-check-input" type="checkbox" id="mtv2" value="Saya ingin menjadi lebih fleksibel"
							name="motivasi[]">
						<label class="form-check-label" for="mtv2">
							Saya ingin menjadi lebih fleksibel
						</label>
					</div>
					<div class="form-check">
						<input class="form-check-input" type="checkbox" id="mtv3" value="Saya ingin melepas stress"
							name="motivasi[]">
						<label class="form-check-label" for="mtv3">
							Saya ingin melepas stress
						</label>
					</div>
					<div class="form-check">
						<input class="form-check-input" type="checkbox" id="mtv4"
							value="Saya ingin meningkatkan massa otot dan kekuatan" name="motivasi[]">
						<label class="form-check-label" for="mtv4">
							Saya ingin meningkatkan massa otot dan kekuatan
						</label>
					</div>
					<div class="form-check">
						<input class="form-check-input" type="checkbox" id="mtv5" value="Saya ingin menurunkan berat badan"
							name="motivasi[]">
						<label class="form-check-label" for="mtv5">
							Saya ingin menurunkan berat badan
						</label>
					</div>
					<input type="text" class="form-control" name="motivasi[]" id="motivasi" placeholder="Lainnya">
				</div>
			</div>
			<!-- end motivasi -->

			<!-- olahraga -->
			<div class='mb-3 row olahraga'>
				<div class="col-lg-4 p-0 m-0"><label for="olahraga">Olahraga yang Anda sedang atau senang jalani?</label>
				</div>
				<div class='row col-lg-8 p-0 m-0'>
					<div class="col-lg-4">
						<div class="form-check">
							<input class="form-check-input" type="checkbox" value="Badminton" name="olahraga[]" id="olg1">
							<label class="form-check-label" for="olg1">
								Badminton
							</label>
						</div>
						<div class="form-check">
							<input class="form-check-input" type="checkbox" value="Berenang" name="olahraga[]" id="olg2">
							<label class="form-check-label" for="olg2">
								Berenang
							</label>
						</div>
						<div class="form-check">
							<input class="form-check-input" type="checkbox" value="Berjalan atau Jogging" name="olahraga[]"
								id="olg3">
							<label class="form-check-label" for="olg3">
								Berjalan atau Jogging
							</label>
						</div>
						<div class="form-check">
							<input class="form-check-input" type="checkbox" value="Bersepeda" name="olahraga[]" id="olg4">
							<label class="form-check-label" for="olg4">
								Bersepeda
							</label>
						</div>
					</div>
					<div class="col-lg-4">
						<div class="form-check">
							<input class="form-check-input" type="checkbox" value="Bola Basket" name="olahraga[]" id="olg5">
							<label class="form-check-label" for="olg5">
								Bola Basket
							</label>
						</div>
						<div class="form-check">
							<input class="form-check-input" type="checkbox" value="Futsal/Sepak Bola" name="olahraga[]"
								id="olg6">
							<label class="form-check-label" for="olg6">
								Futsal/Sepak Bola
							</label>
						</div>
						<div class="form-check">
							<input class="form-check-input" type="checkbox" value="Gym" name="olahraga[]" id="olg7">
							<label class="form-check-label" for="olg7">
								Gym
							</label>
						</div>
						<div class="form-check">
							<input class="form-check-input" type="checkbox" value="Mendaki" name="olahraga[]" id="olg8">
							<label class="form-check-label" for="olg8">
								Mendaki
							</label>
						</div>
					</div>
					<div class="col-lg-4">
						<div class="form-check">
							<input class="form-check-input" type="checkbox" value="Senam Aerobik" name="olahraga[]" id="olg9">
							<label class="form-check-label" for="olg9">
								Senam Aerobik
							</label>
						</div>
						<div class="form-check">
							<input class="form-check-input" type="checkbox" value="Skiping" name="olahraga[]" id="olg10">
							<label class="form-check-label" for="olg10">
								Skiping
							</label>
						</div>
						<div class="form-check">
							<input class="form-check-input" type="checkbox" value="Yoga" name="olahraga[]" id="olg11">
							<label class="form-check-label" for="olg11">
								Yoga
							</label>
						</div>
						<div class="form-check">
							<input class="form-check-input" type="checkbox" value="Zumba" name="olahraga[]" id="olg12">
							<label class="form-check-label" for="olg12">
								Zumba
							</label>
						</div>
					</div>
					<input type="text" class="form-control" name="olahraga[]" id="olahraga" placeholder="Lainnya">
				</div>
			</div>
			<!-- end olahraga -->

			<!-- lama -->
			<div class='form-group row lama'>
				<div class='col-md-4 p-0 m-0'><label>Berapa lama Anda olahraga dalam satu sesi?</label></div>
				<div class='col-md-8 p-0 m-0 form-group '>
					<div class="form-check form-check-inline">
						<input class="form-check-input" type="radio" name="lama" id="lama1" value="30 menit ke bawah">
						<label class="form-check-label" for="lama1">30 menit ke bawah</label>
					</div>
					<div class="form-check form-check-inline">
						<input class="form-check-input" type="radio" name="lama" id="lama2" value="1 jam">
						<label class="form-check-label" for="lama2">1 jam</label>
					</div>
					<div class="form-check form-check-inline">
						<input class="form-check-input" type="radio" name="lama" id="lama2" value="2 jam">
						<label class="form-check-label" for="lama2">2 jam</label>
					</div>
					<div class="form-check form-check-inline">
						<input class="form-check-input" type="radio" name="lama" id="lama2" value="3 jam ke atas">
						<label class="form-check-label" for="lama2">3 jam ke atas</label>
					</div>
				</div>
			</div>
			<!-- end lama -->

			<!-- sering -->
			<div class='form-group row sering'>
				<div class='col-md-4 p-0 m-0'><label>Seberapa sering Anda olahraga dalam satu minggu?</label></div>
				<div class='col-md-8 p-0 m-0 form-group '>
					<div class="form-check form-check-inline">
						<input class="form-check-input" type="radio" name="sering" id="srg1" value="1 hingga 2 kali seminggu">
						<label class="form-check-label" for="srg1">1 hingga 2 kali seminggu</label>
					</div>
					<div class="form-check form-check-inline">
						<input class="form-check-input" type="radio" name="sering" id="srg2" value="3 hingga 4 kali seminggu">
						<label class="form-check-label" for="srg2">3 hingga 4 kali seminggu</label>
					</div>
					<div class="form-check form-check-inline">
						<input class="form-check-input" type="radio" name="sering" id="srg2" value="Setiap hari">
						<label class="form-check-label" for="srg2">Setiap hari</label>
					</div>
				</div>
			</div>
			<!-- end sering -->


			<!-- penyakit -->
			<div class='mb-3 row penyakit'>
				<div class="col-lg-4 p-0 m-0"><label for="penyakit">Riwayat Penyakit</label></div>
				<div class='row col-lg-8 p-0 m-0'>
					<div class="col-lg-3">
						<div class="form-check">
							<input class="form-check-input" type="checkbox" value="Tidak Ada" name="penyakit[]" id="pny1">
							<label class="form-check-label" for="pny1">
								Tidak Ada
							</label>
						</div>
						<div class="form-check">
							<input class="form-check-input" type="checkbox" value="Asthma" name="penyakit[]" id="pny2">
							<label class="form-check-label" for="pny2">
								Asthma
							</label>
						</div>
					</div>
					<div class="col-lg-2">
						<div class="form-check">
							<input class="form-check-input" type="checkbox" value="Diabetes" name="penyakit[]" id="pny3">
							<label class="form-check-label" for="pny3">
								Diabetes
							</label>
						</div>
						<div class="form-check">
							<input class="form-check-input" type="checkbox" value="Maag" name="penyakit[]" id="pny4">
							<label class="form-check-label" for="pny4">
								Maag
							</label>
						</div>
					</div>
					<div class="col-lg-3">
						<div class="form-check">
							<input class="form-check-input" type="checkbox" value="Nyeri Lutut" name="penyakit[]" id="pny5">
							<label class="form-check-label" for="pny5">
								Nyeri Lutut
							</label>
						</div>
						<div class="form-check">
							<input class="form-check-input" type="checkbox" value="Penyakit Ginjal" name="penyakit[]"
								id="pny6">
							<label class="form-check-label" for="pny6">
								Penyakit Ginjal
							</label>
						</div>
					</div>
					<div class="col-lg-4">
						<div class="form-check">
							<input class="form-check-input" type="checkbox" value="Tekanan Darah Rendah" name="penyakit[]"
								id="pny7">
							<label class="form-check-label" for="pny7">
								Tekanan Darah Rendah
							</label>
						</div>
						<div class="form-check">
							<input class="form-check-input" type="checkbox" value="Tekanan Darah Tinggi" name="penyakit[]"
								id="pny8">
							<label class="form-check-label" for="pny8">
								Tekanan Darah Tinggi
							</label>
						</div>
					</div>
					<input type="text" class="form-control" name="penyakit[]" id="penyakit" placeholder="Lainnya">
				</div>
			</div>
			<!-- end penyakit -->


			<div class='col-lg-12 text-center'>
				<button class="btn btn-primary my-1 col-lg-3">Submit</button>
			</div>
		</form>
		</div>
	</div>
	
	<!-- <div class='text-center jumbotron'><h4>Fitness Recommendation</h4></div> -->
	
</div>

