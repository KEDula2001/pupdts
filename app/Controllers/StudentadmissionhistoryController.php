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
		$this->data['studentadmission_remarks'] = $getremarks->__getadmissionremarks($id);
		// var_dump($this->data['studentadmission_remarks']);
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
