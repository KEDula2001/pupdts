<?php

namespace App\Models;

use CodeIgniter\Model;
use Modules\StudentManagement\Controllers\Students;

class RefremarksModel extends Model
{
	
	protected $table                = 'ref_for_remarks';
	protected $allowedFields        = ['id', 'user_id', 'no_dry_seal', 'sc_true_copy', 'sc_pup_remarks', 's_one_photocopy', 'submit_original', 'other_remarks', 'created_at'];

	public function insertSendLackingDocuments($email, $userID, $no_dry_seal, $sc_true_copy, $sc_pup_remarks, $s_one_photocopy, $submit_original, $not_submit, $remarks)
	{
		$this->transBegin();

		$student = new Students();
		// var_dump($email);
	      if($student->sendLackingStudentDocuments($email=NULL, $no_dry_seal=NULL, $sc_true_copy=NULL, $sc_pup_remarks=NULL, $s_one_photocopy=NULL, $submit_original=NULL, $not_submit=NULL,$remarks=NULL))
	      {

	        $this->transCommit();
			
			$this->set('user_id', $userID);	
			$this->set('no_dry_seal', $no_dry_seal);
			$this->set('sc_true_copy', $sc_true_copy);
			$this->set('sc_pup_remarks', $sc_pup_remarks);
			$this->set('s_one_photocopy', $s_one_photocopy);
			$this->set('submit_original', $submit_original);
			$this->set('not_submit', $not_submit);
			$this->set('send_button', $send_button);
			
			$this->insert();
	        
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
