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
