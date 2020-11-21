<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class M_fitness extends CI_Model
{
	function count1($jk,$age,$lvl,$oft,$mtv,$diet,$olg){
		$hsl = $this->db->query( "SELECT exercise as olahraga, count(mestamp) as jml, dataset.long
		FROM dataset
		where gender = '$jk' and age = '$age' and dataset.level = '$lvl' and often = '$oft' and motiv like '%$mtv%' and diet = '$diet'  
		and exercise like '%$olg%' and dataset.long != 'I don''t really exercise'
		ORDER BY jml DESC " );
		return $hsl;
	}

	function count2($jk,$age,$lvl,$oft,$mtv,$diet,$olg){
		$hsl = $this->db->query( "SELECT exercise as olahraga, count(mestamp) as jml, dataset.long
		FROM dataset
		where gender = '$jk' and age = '$age' and dataset.level = '$lvl' and often = '$oft' and motiv like '%$mtv%'
		and exercise like '%$olg%' and dataset.long != 'I don''t really exercise'
		ORDER BY jml DESC " );
		return $hsl;
	}

	function count3($jk,$age,$lvl,$oft,$mtv,$diet,$olg){
		$hsl = $this->db->query( "SELECT exercise as olahraga, count(mestamp) as jml, dataset.long
		FROM dataset
		where gender = '$jk' and age = '$age' and often = '$oft' and motiv like '%$mtv%'
		and exercise like '%$olg%' and dataset.long != 'I don''t really exercise'
		ORDER BY jml DESC " );
		return $hsl;
	}

	function countLong($olg){
		$hsl = $this->db->query( "SELECT exercise as olahraga, count(mestamp) as jml, dataset.long
		FROM dataset
		where  exercise like '%$olg%'
		ORDER BY `jml`  
		DESC limit 10" );
		return $hsl;
	}

	function getOlg(){
		$hsl = $this->db->query( "SELECT cersice as olahraga, img FROM exercise" );
		return $hsl;
	}

	function add($nama,$jk,$dit,$kbu,$lma,$mtv,$olg,$pny,$srg,$tmp,$usi){
		return $this->db->query( "INSERT INTO fitness 
		(`nama`,`jenis_kelamin`,`diet`,`kebugaran`,`lama`,`motivasi`,`olahraga`,`penyakit`,`sering`,`timestamp`,`usia`)
		VALUES ('$nama','$jk','$dit','$kbu','$lma','$mtv','$olg','$pny','$srg','$tmp','$usi')" );
	}
		
}