<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class M_fitness extends CI_Model
{
	function getData(){
		$hsl = $this->db->query( "SELECT * FROM fitness " );
		return $hsl;
	}
	
	function add($nama,$jk,$dit,$kbu,$lma,$mtv,$olg,$pny,$srg,$tmp,$usi){
		return $this->db->query( "INSERT INTO fitness 
		(`nama`,`jenis_kelamin`,`diet`,`kebugaran`,`lama`,`motivasi`,`olahraga`,`penyakit`,`sering`,`timestamp`,`usia`)
		VALUES ('$nama','$jk','$dit','$kbu','$lma','$mtv','$olg','$pny','$srg','$tmp','$usi')" );
	}
		
}