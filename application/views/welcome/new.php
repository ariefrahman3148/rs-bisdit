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
		<div class='col-lg-6 w3-animate-opacity  m-0 w3-white m-0 p-0'>
			<div class="w3-display-middle">
			<?php if($olg!=null && $lama != null): ?>
			Kami Merekomendasikan <?php echo $olg.' selama '; echo $lama ?>
			<?php else : ?>
			Maaf kami belum bisa menampilkan rekomendasi untuk anda
			<?php endif; ?>
			</div>
		</div>
		<div class='col-lg-6 w3-animate-left w3-display-container w3-black p-0 m-0'>
		<img src="<?php echo base_url('asset/images/angkat.jfif')?>" class='w3-opacity w3-display-' alt="" style= " height:100vh">
			<div class="h2 w3-display-middle">Fitness Recommendation</div>
		
		</div>
	</div>
	
	<!-- <div class='text-center jumbotron'><h4>Fitness Recommendation</h4></div> -->
	
</div>

