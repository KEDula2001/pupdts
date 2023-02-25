<?php

namespace App\Models;

use CodeIgniter\Model;
use Modules\StudentManagement\Controllers\Students;
use Modules\StudentManagement\Models\StudentsModel;

class RefremarksModel extends Model
{
	
	protected $table = 'ref_for_remarks';
	protected $allowedFields = [
		'id', 
		'user_id', 
		'no_dry_sealf137', 
		'no_dry_sealgrade10', 
		'no_dry_sealgrade11', 
		'no_dry_sealgrade12', 
		'no_dry_sealgoodmoral', 
		's_one_photocopy_grade10', 
		's_one_photocopy_grade11', 
		's_one_photocopy_grade12', 
		's_one_photocopy_sarform', 
		's_one_photocopy_psa', 
		's_one_photocopy_goodmoral', 
		'submit_original_sarform',
		'submit_original_f137' ,
		'submit_original_grade10', 
		'submit_original_grade11', 
		'submit_original_grade12', 
		'submit_original_psa', 
		'submit_original_goodmoral', 
		'submit_original_medcert', 
		'submit_twobytwo', 
		'certificate_of_completion', 
		// 'not_submitted_sarform',
		// 'not_submitted_f137',
		// 'not_submitted_grade10',
		// 'not_submitted_grade11',
		// 'not_submitted_grade12',
		// 'not_submitted_psa',
		// 'not_submitted_goodmoral',
		// 'not_submitted_medcert',
		'sc_pup_remarks',
		'other_remarks',
	];

	public function insertSendLackingDocuments(
		$userID = 0, 
		$email = null, 
		$data = [], 
		$other_remarks = null
	) {
		$is_data_not_null = false;
		foreach ($data as $value) {
			if(!empty($value)){
				$is_data_not_null = true;
			}
		}
		if($is_data_not_null == true){
			$email_address = $email;
			$insert_data = $data;
			$remarks = $other_remarks;

			$this->transBegin();

			$student = new Students();
			$studentModel = new StudentsModel();
			$studentInfo = $studentModel->getStudentByUserId($userID)[0];

			if($student->sendLackingStudentDocuments(
				$studentInfo['firstname'], 
				$studentInfo['middlename'], 
				$studentInfo['lastname'], 
				$email_address, 
				$insert_data,
				$remarks
			)) {
				$this->transCommit();

				$this->set('user_id', $userID);	
				$this->set('other_remarks', $remarks);	
				return $this->insert($data);

				return true;
			} else {
				$this->transRollback();

				return false;
			}
		}else{
			return false;
		}
	}

	public function updateSendLackingDocuments(
		$userID = 0, 
		$email = null, 
		$data=[], 
		$other_remarks = null
	) {
		$is_data_not_null = false;
		foreach ($data as $value) {
			if(!empty($value)){
				$is_data_not_null = true;
			}
		}
		if($is_data_not_null == true){
			$email_address = $email;
			$insert_data = $data;
			$remarks = $other_remarks;
	
			$this->transBegin();
	
			$student = new Students();
			$studentModel = new StudentsModel();
			$studentInfo = $studentModel->getStudentByUserId($userID)[0];
	
			if($student->sendLackingStudentDocuments(
				$studentInfo['firstname'], 
				$studentInfo['middlename'], 
				$studentInfo['lastname'], 
				$email_address, 
				$insert_data,
				$remarks
			)) {
				$this->transCommit();
	
				$this->set($data);	
				$this->set('other_remarks', $remarks);	
				$this->where('user_id', $userID);
				
				$this->update();
				
				return true;
			} else {
				$this->transRollback();
	
				return false;
			}
		}else{
			return false;
		}
	}
	
	public function __getadmissionremarks($id)
	{
		return $this->db->table($this->table)
                        ->where('user_id', $id)  
                        ->get()
                        ->getResultArray();
	}

	
}
