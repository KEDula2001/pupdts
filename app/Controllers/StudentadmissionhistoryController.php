<?php

namespace App\Controllers;

use App\Controllers\BaseController;
use App\Models\StudentadmissionModel;
use App\Models\RefremarksModel;
use App\Models\StudentadmissionfilesModel;
use App\Models\AdmissionDocumentStatusModel;

class StudentadmissionhistoryController extends BaseController
{
	public function index($id)
	{
		$getstudentadmission = new StudentadmissionModel;
		$getremarks = new RefremarksModel;
		$getstudentadmission_files = new StudentadmissionfilesModel;

		$this->data['studentadmission_files'] = $getstudentadmission_files->__getIfStudentHasSubmittedFiles($id);
		$this->data['studentadmission_details'] = $getstudentadmission->__getSAMDetails($id);
		$studentadmission_details = $getstudentadmission->__getSAMDetails($id);
		$cnt = 0;
		if(!empty($studentadmission_details)){
    		if($studentadmission_details['sar_pupcct_resultID'] != 0){
    			$cnt++; 
    		}
    		if($studentadmission_details['f137ID'] != 0){
    			$cnt++; 
    		}
    		if($studentadmission_details['f138ID'] != 0){
    			$cnt++; 
    		}
    		if($studentadmission_details['cert_dry_sealID'] != 0){
    			$cnt++; 
    		}
    		if($studentadmission_details['cert_dry_sealID_twelve'] != 0){
    			$cnt++; 
    		}
    		if($studentadmission_details['psa_nsoID'] != 0){
    			$cnt++; 
    		}
    		if($studentadmission_details['good_moralID'] != 0){
    			$cnt++; 
    		}
    		if($studentadmission_details['medical_certID'] != 0){
    			$cnt++; 
    		}
    		if($studentadmission_details['picture_two_by_twoID'] != 0){
    			$cnt++; 
    		}
    		if($studentadmission_details['nc_non_enrollmentID'] != 0){
    			$cnt++; 
    		}
    		if($studentadmission_details['coc_hs_shsID'] != 0){
    			$cnt++; 
    		}
    		if($studentadmission_details['ac_pept_alsID'] != 0){
    			$cnt++; 
    		}
		}
		
		$this->data['submitted_count'] = $cnt; 
		
		$ctr = 0; 
		
		if(!empty($this->data['studentadmission_files'])){
    		if($this->data['studentadmission_files']['sar_pupcct_results_files'] != NULL){
    			$ctr++;
    		}
    		if($this->data['studentadmission_files']['f137_files'] != NULL){
    			$ctr++;
    		}
    		if($this->data['studentadmission_files']['g10_files'] != NULL){
    			$ctr++; 
    		}
    		if($this->data['studentadmission_files']['g11_files'] != NULL){
    			$ctr++; 
    		}
    		if($this->data['studentadmission_files']['g12_files'] != NULL){
    			$ctr++; 
    		}
    		if($this->data['studentadmission_files']['psa_nso_files'] != NULL){
    			$ctr++; 
    		}
    		if($this->data['studentadmission_files']['good_moral_files'] != NULL){
    			$ctr++; 
    		}
    		if($this->data['studentadmission_files']['medical_cert_files'] != NULL){
    			$ctr++; 
    		}
    		if($this->data['studentadmission_files']['picture_two_by_two_files'] != NULL){
    			$ctr++; 
    		}
		}
		$this->data['files_submitted_count'] = $ctr; 

	





			
		
		// die(print_r($studentadmission_files));
		
		$this->data['studentadmission_remarks'] = $getremarks->__getadmissionremarks($id);
// 		die(print_r($this->data['studentadmission_remarks']));
		// $this->data['office_approvals'] = $this->officeApprovalModel->getOwnRequest($_SESSION['student_id']);
		// $this->data['request_details_ready'] = $this->requestDetailModel->getDetails(['requests.student_id' => $_SESSION['student_id'], 'request_details.status' => 'r', 'requests.status' => 'c']);
		// $this->data['request_details_process'] = $this->requestDetailModel->getDetails(['requests.student_id' => $_SESSION['student_id'], 'request_details.status' => 'p', 'requests.status' => 'c']);
		// $this->data['requests'] = $this->requestModel->getDetails(['student_id' => $_SESSION['student_id'], 'requests.completed_at' => null, 'requests.status !=' => 'd']);
		// $this->data['request_documents'] = $this->requestDetailModel->getDetails();

	    $this->data['view'] = 'Modules\DocumentRequest\Views\requests\admissionhistory\admissionhistory';
	    return view('template/index', $this->data);
	}
	public function showAdmissionGallery($id)
	{
		$getstudentadmission_files = new StudentadmissionfilesModel;
		$getstudentadmission_files_status = new AdmissionDocumentStatusModel();

		$this->data['studentadmission_status'] = $getstudentadmission_files_status->__getStudentAdmissionStatus($id);
		// die(print_r($this->data['studentadmission_status']));
		$this->data['studentadmission_files'] = $getstudentadmission_files->__getStudentFiles($id);
		$this->data['view'] = 'Modules\DocumentRequest\Views\requests\gallery\admission_gallery';
	    return view('template/index', $this->data);
	}
}
