


<div class="container-fluid">
	<div class='text-center jumbotron'><h4>Fitness Recommendation</h4></div>
	<?php foreach ($olahraga as $olahraga): ?>
	<p><?php echo $olahraga->olahraga ?> = <?php $olahraga->jml ?> -> <?php echo $olahraga->lama ?></p>
	<?php endforeach; ?>
	
</div>
