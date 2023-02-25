<?php

namespace App\Models;

use CodeIgniter\Model;
use App\Models\BaseModel;
use App\Models;
use Modules\StudentManagement\Controllers\Students; 
use Modules\StudentManagement\Models\StudentsModel;


class AdmissionDocumentStatusModel extends Model
{
	protected $table = 'student_admission';

	protected $allowedFields = ['studID', 'sar_pupcet_result_status', 'f137_status', 'g10_status', 'g11_status', 'g12_status', 'psa_nso_status','good_moral_status', 'medical_cert_status', 'twobytwo_status'];

	
	public function insertStatusData($data){
		
	

	$this->db->table($this->table)->insert($data);

		

	}
	
	public function __updateAdmissionDocument($id, $data)
	{	
		
		$this->transBegin();
		$insert_data = $data;  
		$student_data = [
	    'sar_pupcet_result_status' => $data[1]['sar_pupcet_result_status'],
		'f137_status' => $data[1]['f137_status'],
		'g10_status' => $data[1]['g10_status'],
		'g11_status' => $data[1]['g11_status'],
		'g12_status' => $data[1]['g12_status'],
		'psa_nso_status' => $data[1]['psa_nso_status'],
		'goodmoral_status' => $data[1]['goodmoral_status'],
		'medical_cert_status' => $data[1]['medical_cert_status'],
		'pictwobytwo_status' => $data[1]['pictwobytwo_status']];

		

		//die(print_r($insert_data));
		$student = new Students();
		$studentModel = new StudentsModel();
		$user = $studentModel->getStudentDetailsByUserId($id)[0];

		//die($user);

		if($student->sendStudentAdmissionDocumentStatus(
			$user['firstname'], 
			$user['middlename'], 
			$user['lastname'], 
			$user['email'], 
			$insert_data
)) {
	        $this->transCommit();
			$this->set($student_data);
			$this->where('studID', $id);
			$this->update();
			
	        
	        return true;
	    } else {
	        $this->transRollback();

	        return false;
	    }

		

		

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
