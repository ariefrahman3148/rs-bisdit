<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class M_fitness extends CI_Model
{
	function getData($jk,$usi,$kbu,$mtv){
		$hsl = $this->db->query( "SELECT olahraga, count('timestamp') as jml, lama
		 FROM fitness 
		 where jenis_kelamin = '$jk' and usia = '$usi' and kebugaran = '$kbu' and motivasi like '%$mtv%'
		 GROUP BY olahraga, lama
		 Order by jml
		 limit 1 " );
		return $hsl;
	}

	
	function add($nama,$jk,$dit,$kbu,$lma,$mtv,$olg,$pny,$srg,$tmp,$usi){
		return $this->db->query( "INSERT INTO fitness 
		(`nama`,`jenis_kelamin`,`diet`,`kebugaran`,`lama`,`motivasi`,`olahraga`,`penyakit`,`sering`,`timestamp`,`usia`)
		VALUES ('$nama','$jk','$dit','$kbu','$lma','$mtv','$olg','$pny','$srg','$tmp','$usi')" );
	}
		
}