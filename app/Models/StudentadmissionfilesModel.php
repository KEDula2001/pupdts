<?php

namespace App\Models;

use CodeIgniter\Model;
use App\Models\BaseModel;

class StudentadmissionfilesModel extends Model
{
	protected $table = 'student_admission_files';

	protected $allowedFields = [
		'studID', 
		'sar_pupcct_results_files', 
		'f137_files', 
		'g10_files', 
		'g11_files', 
		'g12_files', 
		'psa_nso_files', 
		'good_moral_files', 
		'medical_cert_files', 
		'picture_two_by_two_files'];

	public function __getIfStudentHasSubmittedFiles($id)
	{
		return $this->db->table($this->table)
						->where('studID', $id)
                        ->get()
                        ->getRowArray();
	}
	public function setInsertAdmissionFiles($data)
	{
	   return $this->insert($data);
	}
	public function setUpdateAdmissionFiles($id,$data)
	{
		return $this->update($id,$data);
	}
	
	public function setUpdateAdmissionFilesReject($id,$data)
	{
		// die(print_r($data));
		($data['sar_pupcct_results_files'] == 'reject' ? $this->set('sar_pupcct_results_files', null): '');
		($data['f137_files'] == 'reject' ? $this->set('f137_files', null): '');
		($data['g10_files'] == 'reject' ? $this->set('g10_files', null): '');
		($data['g11_files'] == 'reject' ? $this->set('g11_files', null): '');
		($data['g12_files'] == 'reject' ? $this->set('g12_files', null): '');
		($data['psa_nso_files'] == 'reject' ? $this->set('psa_nso_files', null): '');
		($data['good_moral_files'] == 'reject' ? $this->set('good_moral_files', null): '');
		($data['medical_cert_files'] == 'reject' ? $this->set('medical_cert_files', null): '');
		($data['picture_two_by_two_files'] == 'reject' ? $this->set('picture_two_by_two_files', null): '');
		$this->where('studID', $id);
		return $this->update();
	}
	
	public function __getStudentFiles($id)
	{
		return $this->db->table($this->table)
						->where('studID', $id)
                        ->get()
                        ->getRowArray();
	}
	public function __getStudentImageFiles($id)
	{
		return $this->db->table($this->table)
						->where('studID', $id)
                        ->get()
                        ->getRowArray();
	}
}
