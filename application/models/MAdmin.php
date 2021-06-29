<?php
class MAdmin extends CI_Model
{
	function dpt_sudah()
	{
		$this->db->from('user');
		$this->db->where('status_vote','Sudah');
		$query = $this->db->get();
		return $query->result();
	}
	function dpt_belum()
	{
		$this->db->from('user');
		$this->db->where('status_vote','Belum');
		$this->db->where('akses','Siswa');
		$query = $this->db->get();
		return $query->result();
	}
	function kartu_peserta()
	{
		$this->db->from('user');
		$this->db->where('akses','Siswa');
		$query = $this->db->get();
		return $query->result();
	}
}