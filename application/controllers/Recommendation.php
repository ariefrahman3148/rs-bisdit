<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Recommendation extends CI_Controller {
	function __construct() {
		parent::__construct();
		$this->load->model( array( 'm_fitness' ) );
	}
	/**
	 * Index Page for this controller.
	 *
	 * Maps to the following URL
	 * 		http://example.com/index.php/welcome
	 *	- or -
	 * 		http://example.com/index.php/welcome/index
	 *	- or -
	 * Since this controller is set as the default controller in
	 * config/routes.php, it's displayed at http://example.com/
	 *
	 * So any other public methods not prefixed with an underscore will
	 * map to /index.php/welcome/<method_name>
	 * @see https://codeigniter.com/user_guide/general/urls.html
	 */
	public function index()
	{
		$data = array( 
			'judul' => 'FITNESS RECOMMENDATION',
			);

		$this->load->view('template/header');
		$this->load->view('welcome/recommendation',$data);
		$this->load->view('template/footer');

	}

	public function foryou($arr)
	{

		$data = array( 
			'top3' => $arr,
			);
		$this->load->view('template/header',$data);
		$this->load->view('welcome/recommendation2',$data);
		$this->load->view('template/footer');

	}

	public function post()
	{
		$mtv=$this->input->post('motiv');
		$jk=$this->input->post('gender');
		$age=$this->input->post('age');
		$lvl=$this->input->post('level');
		$diet=$this->input->post('diet');
		$oft=$this->input->post('often');

		$exercise = $this->m_fitness->getOlg()->result();

		$recomm = [];
		$olg = [];
		foreach( $exercise as $ex){
			if($this->m_fitness->count1($jk,$age,$lvl,$oft,$mtv,$diet,trim($ex->olahraga))->row()->jml != 0){
				array_push($recomm,(object)[
					'olahraga' => $ex->olahraga, 
					'jumlah' => (int)$this->m_fitness->count1($jk,$age,$lvl,$oft,$mtv,$diet,trim($ex->olahraga))->row()->jml,
					'lama' => $this->m_fitness->count1($jk,$age,$lvl,$oft,$mtv,$diet,trim($ex->olahraga))->row()->long,
					'link' => $ex->img
					]);
				array_push($olg,$ex->olahraga);
			}
		};
		if(count($recomm)<=2){
			foreach( $exercise as $ex){
				if($ex->olahraga == $olg){
					continue;
				};
					if($this->m_fitness->count2($jk,$age,$lvl,$oft,$mtv,$diet,trim($ex->olahraga))->row()->jml != 0){
						array_push($recomm,(object)[
							'olahraga' => $ex->olahraga, 
							'jumlah' => (int)$this->m_fitness->count2($jk,$age,$lvl,$oft,$mtv,$diet,trim($ex->olahraga))->row()->jml,
							'lama' => $this->m_fitness->count2($jk,$age,$lvl,$oft,$mtv,$diet,trim($ex->olahraga))->row()->long,
							'link' => $ex->img
							]);
						};
						
				};
			};
			if(count($recomm)<=2){
				foreach( $exercise as $ex){
					if($ex->olahraga == $olg){
						continue;
					};
						if($this->m_fitness->count3($jk,$age,$lvl,$oft,$mtv,$diet,trim($ex->olahraga))->row()->jml != 0){
							array_push($recomm,(object)[
								'olahraga' => $ex->olahraga, 
								'jumlah' => (int)$this->m_fitness->count3($jk,$age,$lvl,$oft,$mtv,$diet,trim($ex->olahraga))->row()->jml,
								'lama' => $this->m_fitness->count3($jk,$age,$lvl,$oft,$mtv,$diet,trim($ex->olahraga))->row()->long,
								'link' => $ex->img,
								]);
							};
							
					};
				};
	

		usort($recomm,function($first,$second){
			return $second->jumlah <=> $first->jumlah;
		});

		$top3 = array_slice($recomm, 0, 3);
		// return $this->output->set_output(json_encode($top3));
		

		// if(count($this->m_fitness->countOlg($jk,$age,$lvl,$oft,$mtv,$diet)->result())==0){
		// 	$olg = null;
		// 	$lama = null;
		// } else {
		// 	$olg = $this->m_fitness->countOlg($jk,$age,$lvl,$oft,$mtv,$diet)->row()->olahraga;
		// 	$lama = $this->m_fitness->getData($jk,$age,$lvl,$oft,$mtv,$diet)->row()->long;
		// }		
		
		$data = array(
			'top3' => $top3,
			 
		);
			
		$this->load->view( 'template/header' );
		$this->load->view( 'welcome/recommendation2', $data );
		$this->load->view( 'template/footer' );
		
		// return $this->output->set_output(json_encode($olahraga));

	}
	

}
