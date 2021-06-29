<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Admin extends CI_Controller {
	
	public function __construct() {
		parent::__construct();
		if ($this->session->userdata('username')=="") 
		{
			redirect('Login');
		}
	}
	public function index()
	{
		$data['dpt_sudah'] = $this->MAdmin->dpt_sudah();
		$data['dpt_belum'] = $this->MAdmin->dpt_belum();
		$data['kandidat'] = $this->MVote->kandidat();;
		$this->load->view('admin',$data);
	}
	public function kartu()
	{
		$data['kartu'] = $this->MAdmin->kartu_peserta();
		$this->load->view('kartu_pdf',$data);
	}
}
