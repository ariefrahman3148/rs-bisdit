<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Welcome extends CI_Controller {
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

		$this->load->view('template/header',$data);
		$this->load->view('welcome/index',$data);
		$this->load->view('template/footer');

	}

	public function hasil()
	{

		$data = array( 
			'judul' => 'FITNESS RECOMMENDATION',
			);
		$this->load->view('template/header',$data);
		$this->load->view('welcome/new',$data);
		$this->load->view('template/footer');

	}

	public function post()
	{
		$mtv=$this->input->post('motivasi');
		$jk=$this->input->post('jenis_kelamin');
		$usi=$this->input->post('usia');
		$kbu=$this->input->post('kebugaran');

		if(count($this->m_fitness->getData($jk,$usi,$kbu,$mtv)->result())==0){
			$olg = null;
			$lama = null;
		} else {
			$olg = $this->m_fitness->getData($jk,$usi,$kbu,$mtv)->row()->olahraga;
			$lama = $this->m_fitness->getData($jk,$usi,$kbu,$mtv)->row()->lama;
		}		
		
		$data = array(
			'olg' => $olg, 
			'lama' => $lama, 
			'judul' => 'FITNESS RECOMMENDATION',

		);
			
		$this->load->view( 'template/header', $data );
		$this->load->view( 'welcome/new', $data );
		$this->load->view( 'template/footer' );
		
		// return $this->output->set_output(json_encode($olahraga));

	}
	
	public function add(){
		$nama=$this->input->post('nama');
		$jk=$this->input->post('jenis_kelamin');
		$dit=$this->input->post('diet');
		$kbu=$this->input->post('kebugaran');
		$lma=$this->input->post('lama');
		$mtv=$this->input->post('motivasi');
		$olg=$this->input->post('olahraga');
		$pny=$this->input->post('penyakit');
		$srg=$this->input->post('sering');
		$tmp=date("m/d/Y h:i:s",time());
		$usi=$this->input->post('usia');
		if($dit==''|| $dit==null){
			return $this->output->set_output(json_encode($pny));
		};
		$this->m_fitness->add($nama,$jk,$dit,$kbu,$lma,$mtv,$olg,$pny,$srg,$tmp,$usi);
		redirect('recsys','refresh');
	}
}
