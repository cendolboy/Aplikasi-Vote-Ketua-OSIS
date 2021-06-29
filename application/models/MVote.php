<?php
class MVote extends CI_Model
{
	function cek_vote()
	{
		$this->db->from('user');
		$this->db->where('username',$this->session->userdata('username'));
		$query = $this->db->get();
		return $query->result();
	}
	function kandidat()
	{
		$this->db->from('kandidat');
		$query = $this->db->get();
		return $query->result();
	}
	function voting_pilihan($id_kandidat)
	{
		$data = array(
			'id_username' => $this->session->userdata('username'),
			'id_kandidat' => $id_kandidat,
		);
		$this->db->insert('vote',$data);
		return TRUE;
	}
	function update_status_pilihan()
	{
		$data = array(
			'status_vote' => "Sudah",
		);
		$this->db->where('username',$this->session->userdata('username'));
		$this->db->update('user',$data);
		return TRUE;
	}
}