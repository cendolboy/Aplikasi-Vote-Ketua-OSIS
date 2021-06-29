<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Vote extends CI_Controller {
	
	public function __construct() {
		parent::__construct();
		if ($this->session->userdata('username')=="") 
		{
			redirect('Login');
		}
	}
	public function index()
	{
		$data['status'] =  $this->MVote->cek_vote();
		$data['kandidat'] = $this->MVote->kandidat();
		$this->load->view('vote',$data);
	}
	function voting()
	{
		$id_kandidat= decrypt_url($this->uri->segment(3));
		$this->MVote->voting_pilihan($id_kandidat);
		$this->MVote->update_status_pilihan();
		redirect('Vote');
	}
}
