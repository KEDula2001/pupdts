<?php

namespace App\Models;

use CodeIgniter\Model;
use Modules\StudentManagement\Controllers\Students;

class RefremarksModel extends BaseModel
{
	
	protected $table                = 'ref_for_remarks';
	protected $allowedFields        = ['id', 'user_id', 'no_dry_sealf137', 'no_dry_sealgrade10', 'no_dry_sealgrade11', 'no_dry_sealgrade12', 'no_dry_sealgoodmoral', 's_one_photocopy_grade10', 's_one_photocopy_grade11', 's_one_photocopy_grade12', 's_one_photocopy_sarform', 's_one_photocopy_psa', 's_one_photocopy_goodmoral', 'submit_original_sarform',
	 'submit_original_f137' ,'submit_original_grade10', 'submit_original_grade11', 'submit_original_grade12', 'submit_original_psa', 'submit_original_goodmoral', 'submit_original_medcert', 'submit_twobytwo'];



	public function insertSendLackingDocuments($userID=0, $email=NULL, $data=[])
	{
		//die(print_r($data));
		return $this->input($data);
		// $this->transBegin();

		// $student = new Students();

		// var_dump($email);
	    // if($student->sendLackingStudentDocuments($email=NULL, $no_dry_seal=NULL, $sc_true_copy=NULL, $sc_pup_remarks=NULL, $s_one_photocopy=NULL, $submit_original=NULL, $not_submit=NULL,$remarks=NULL))
	    //   {

	    //     $this->transCommit();
			
			
	        
	    //     return true;
	    //   }
	    //   else
	    //   {
	    //     $this->transRollback();
	    //     return false;
	    //   }
	}


	public function updateSendLackingDocuments($userID, $email, $data)
	{
		$this->transBegin();

		$student = new Students();
		// var_dump($email);
	      if($student->sendLackingStudentDocuments($email=NULL, $no_dry_seal=NULL, $sc_true_copy=NULL, $sc_pup_remarks=NULL, $s_one_photocopy=NULL, $submit_original=NULL, $not_submit=NULL,$remarks=NULL))
	      {

	        $this->transCommit();
			
			$this->set($data);	
			$this->where('user_id', $userID);
			
			$this->update();
	        
	        return true;
	      }
	      else
	      {
	        $this->transRollback();
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
