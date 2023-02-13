<?php

namespace App\Models;

use CodeIgniter\Model;
use App\Models\BaseModel;
use App\Models;



class AdmissionDocumentStatusModel extends Model
{
	protected $table = 'student_admission';

	protected $allowedFields = ['studID', 'sar_pupcet_result_status', 'f137_status', 'g10_status', 'g11_status', 'g12_status', 'psa_nso_status','good_moral_status', 'medical_cert_status', 'twobytwo_status'];

	
	public function insertStatusData($data){
		
	

	$this->db->table($this->table)->insert($data);

		

	}
	
	public function __updateAdmissionDocument($id, $data)
	{	
		$this->set($data);
		$this->where('studID', $id);
        return $this->update();
	}

	public function __getStudentAdmissionStatus($id){ 
		return $this->db->table($this->table)
						->where('studID', $id)
						->get() 
						->getRowArray();
	}
	
	

	public function __getDocumentFilesStatus($id){ 
		return $this->db->table($this->table)
						->where('studID', $id)
						->get()
						->getRowArray(); 

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
