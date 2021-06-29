<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Login extends CI_Controller {

	public function index()
	{
		$this->load->view('login');
	}
	function auth()
	{
		$data = array('username' => $this->input->post('username', TRUE),'password' => $this->input->post('password', TRUE));
		$hasil = $this->MLogin->cek_user($data);
		if ($hasil->num_rows() == 1) {
			foreach ($hasil->result() as $sess) 
			{
				$sess_data['username'] = $sess->username;
				$sess_data['nama_user'] = $sess->nama_user;
				$sess_data['akses'] = $sess->akses;
				$sess_data['status_vote'] = $sess->status_vote;
				$this->session->set_userdata($sess_data);
			}
			if ($this->session->userdata('akses')=='siswa') {
				$this->session->set_flashdata("pesan", "<div class=\"col-md-12\"><div class=\"alert alert-success\" id=\"alert\">Berhasil Login a.n '".$this->session->userdata('nama_user')."' ID : '".$this->session->userdata('username')."'</div></div>");
				redirect('Vote');
			}
			if ($this->session->userdata('akses')=='admin') {
				$this->session->set_flashdata("pesan", "<div class=\"col-md-12\"><div class=\"alert alert-success\" id=\"alert\">Berhasil Login a.n '".$this->session->userdata('nama_user')."' ID : '".$this->session->userdata('username')."'</div></div>");
				redirect('Admin');
			}
		}
		else {
			echo "<script>sweetAlert('Mohon Maaf', 'Username / Password Anda Mungkin Salah', 'failed');</script>";
			redirect('Login');
		}
	}
	function failed()
	{
		echo "<script>sweetAlert('Mohon Maaf', 'Username / Password Anda Mungkin Salah', 'failed');</script>";
		redirect('Login');
	}
	function logout() 
	{
		$this->session->unset_userdata('username');
		$this->session->unset_userdata('nama_user');
		$this->session->unset_userdata('akses');
		$this->session->unset_userdata('status_vote');
		session_destroy();
		redirect('Login');
	}
}
