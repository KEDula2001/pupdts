<?php

namespace App\Models;

use CodeIgniter\Model;
use App\Models\BaseModel;

class RefForRetrievedModel extends Model
{
	protected $table = 'ref_for_retrieved';
	protected $allowedFields = ['id', 'studID', 'requirementsID', 'reasons', 'retrieved_at'];

	public function __setInsertRetrievedAdmissionFiles($id, $requirementsID, $reasons)
	{	
		$this->set('studID', $id);
		$this->set('requirementsID', $requirementsID);
		$this->set('reasons', $reasons);

		$this->insert();
	}
	public function __getRetrievedAdmissionFilesByStudentId($id, $requirementsID){
		
		return $this->db->table($this->table)
						->where('studID', $id)
						->where('requirementsID', $requirementsID)
                        ->get()
                        ->getResultArray();
		// $this->where('studID', $id);
		// return $this->findAll();
	}
	public function __getRetrievedRecord()
	{
		return $this->db->table($this->table)
						->join('students', 'students.user_id = ref_for_retrieved.studID')
						->join('courses', 'courses.id = students.course_id')
                        ->get()
                        ->getResultArray();
	}
}
