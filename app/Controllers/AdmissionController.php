<?php

namespace App\Controllers;

use App\Controllers\BaseController;
use App\Models\StudentsModel;
use App\Models\CourseModel;
use App\Models\StudentadmissionModel;
use App\Models\ChecklistModel;
use App\Models\RefremarksModel;
use App\Models\RefForRetrievedModel;
use App\Models\StudentadmissionfilesModel;
use App\Models\AdmissionDocumentStatusModel;
use CodeIgniter\Files\File;
use App\Libraries\Pdf;
use App\Libraries\Fpdi;
use Modules\StudentManagement\Controllers\Students;

class AdmissionController extends BaseController
{
	 protected $helpers = ['form', 'url'];


	public function showStudentCompleteUpload(){ 
		{
			$getstudent = new StudentsModel;
			$getstudentadmissionmodel = new StudentadmissionModel;
	
			$this->data['count_complete_uploads'] = $getstudentadmissionmodel->getcompleteuploads();
			
			$this->data['students'] = $getstudent->__getStudentDetails();
	
			if ($this->isAjax()) {
					return view('admissionoffice/components/completestudentupload', $this->data);
				}
			echo view('admissionoffice/header', $this->data);
			echo view('admissionoffice/components/completestudentupload', $this->data);
			return view('admissionoffice/footer', $this->data);
		}
	}

	public function showStudentIncompleteUpload(){ 
		{
			$getstudent = new StudentsModel;
			$getstudentadmissionmodel = new StudentadmissionModel;
	
			
			$this->data['count_incomplete_uploads'] = $getstudentadmissionmodel->getincompleteuploads();
			$this->data['students'] = $getstudent->__getStudentDetails();
	
			if ($this->isAjax()) {
					return view('admissionoffice/components/incompletestudentupload', $this->data);
				}
			echo view('admissionoffice/header', $this->data);
			echo view('admissionoffice/components/incompletestudentupload', $this->data);
			return view('admissionoffice/footer', $this->data);
		}
	}



	 public function admissioncrud()
	 {
		 $getstudent = new StudentsModel;
		 $getchecklist = new ChecklistModel;
		 $getstudentadmissionmodel = new StudentadmissionModel;
		 $getRetrievedRecord = new RefForRetrievedModel;
 
		 $this->data['retrieved_record'] = $getRetrievedRecord->__getRetrievedRecord();
		 $this->data['count_incomplete'] = $getstudentadmissionmodel->__getIncompleteDocs(); 
		 $this->data['count_complete'] = $getstudentadmissionmodel->__getCompleteDocs();
		 $this->data['count_recheck'] = $getstudentadmissionmodel->__getRecheckDocs();
		 $this->data['students'] = $getstudent->__getStudentDetails();
		 // die(print_r($this->data['students']));
		//  $this->data['students_admission'] = $getstudentadmissionmodel->__getStudentAdmissionDetails();
		//  // die(print_r($this->data['students_admission']));
		//  $this->data['checklists'] = $getchecklist->__getChecklistDetails();
		//  if ($this->isAjax()) {
		// 	 return view('admissionoffice/admissiondashboard', $this->data);
		//  }
		//  echo view('admissionoffice/header', $this->data);
		//  echo view('admissionoffice/admissiondashboard', $this->data);
		//  return view('admissionoffice/footer', $this->data);

		$this->data['users'] = $this->adminModel->getDetails();
		$this->data['users_deleted'] = $this->adminModel->onlyDeleted()->getDetails();
		$this->data['view'] = 'admissionoffice/admissioncrud';
		return view('template/index', $this->data);
	 }
	 



	public function UploadStudentDocuments($id){ 
		$edit = false; 
		
		$getStudentAdFileModel = new StudentadmissionfilesModel();
		$is_check_if_true = $getStudentAdFileModel->__getIfStudentHasSubmittedFiles($id);

		
		if(!empty($is_check_if_true)){
			$this->data['studentadmission_files'] = $getStudentAdFileModel->__getIfStudentHasSubmittedFiles($id);
			$edit = true;
		}
		
		$this->data['studentadmission_files'] = $getStudentAdFileModel->__getIfStudentHasSubmittedFiles($id);
		$this->data['view'] = 'Modules\DocumentRequest\Views\requests\admissionhistory\admissionhistory';
		// die(print_r($this->data['studentadmission_files']));
		if($this->request->getMethod() == 'post'){

			if(empty($this->data['studentadmission_files']['sar_pupcct_results_files'])){
				$sar_pupcct_results_files = $this->request->getFile('sar_pupcct_results_files');
				
				if($sar_pupcct_results_files->isValid()){
					
					$filepath_sar_pupcct_results_name = $sar_pupcct_results_files->getName();
					$sar_pupcct_results_files->move(ROOTPATH.'public/uploads/', $filepath_sar_pupcct_results_name);
					
				}
			}else{
				$filepath_sar_pupcct_results_name = $this->data['studentadmission_files']['sar_pupcct_results_files'];
			}

			if(empty($this->data['studentadmission_files']['f137_files'])){
				$f137_files = $this->request->getFile('f137_files');
				
				if($f137_files->isValid()){
					
					$filepath_f137_name = $f137_files->getName();
					$f137_files->move(ROOTPATH.'public/uploads/', $filepath_f137_name);
					
				}
			}else{
				$filepath_f137_name = $this->data['studentadmission_files']['f137_files'];
			}

			if(empty($this->data['studentadmission_files']['g10_files'])){
				$g10_files = $this->request->getFile('g10_files');
				
				if($g10_files->isValid()){
					
					$filepath_g10_name = $g10_files->getName();
					$g10_files->move(ROOTPATH.'public/uploads/', $filepath_g10_name);
					
				}
			}else{
				$filepath_g10_name = $this->data['studentadmission_files']['g10_files'];
			}

			if(empty($this->data['studentadmission_files']['g11_files'])){
				$g11_files = $this->request->getFile('g11_files');
				
				if($g11_files->isValid()){
					
					$filepath_g11_name = $g11_files->getName();
					$g11_files->move(ROOTPATH.'public/uploads/', $filepath_g11_name);
					
				}
			}else{
				$filepath_g11_name = $this->data['studentadmission_files']['g11_files'];
			}

			if(empty($this->data['studentadmission_files']['g12_files'])){
				$g12_files = $this->request->getFile('g12_files');
				
				if($g12_files->isValid()){
					
					$filepath_g12_name = $g12_files->getName();
					$g12_files->move(ROOTPATH.'public/uploads/', $filepath_g12_name);
					
				}
			}else{
				$filepath_g12_name = $this->data['studentadmission_files']['g12_files'];
			}

			if(empty($this->data['studentadmission_files']['psa_nso_files'])){
				$psa_nso_files = $this->request->getFile('psa_nso_files');
				
				if($psa_nso_files->isValid()){
					
					$filepath_psa_nso_name = $psa_nso_files->getName();
					$psa_nso_files->move(ROOTPATH.'public/uploads/', $filepath_psa_nso_name);
					
				}
			}else{
				$filepath_psa_nso_name = $this->data['studentadmission_files']['psa_nso_files'];
			}

			if(empty($this->data['studentadmission_files']['good_moral_files'])){
				$good_moral_files = $this->request->getFile('good_moral_files');
				
				if($good_moral_files->isValid()){
					
					$filepath_good_moral_name = $good_moral_files->getName();
					$good_moral_files->move(ROOTPATH.'public/uploads/', $filepath_good_moral_name);
					
				}
			}else{
				$filepath_good_moral_name = $this->data['studentadmission_files']['good_moral_files'];
			}

			if(empty($this->data['studentadmission_files']['medical_cert_files'])){
				$medical_cert_files = $this->request->getFile('medical_cert_files');
				
				if($medical_cert_files->isValid()){
					
					$filepath_medicalcert_name = $medical_cert_files->getName();
					$medical_cert_files->move(ROOTPATH.'public/uploads/', $filepath_medicalcert_name);
					
				}
			}else{
				$filepath_medicalcert_name = $this->data['studentadmission_files']['medical_cert_files'];
			}

			if(empty($this->data['studentadmission_files']['picture_two_by_two_files'])){
				$picture_two_by_two_files = $this->request->getFile('picture_two_by_two_files');
				
				if($picture_two_by_two_files->isValid()){
					
					$filepath_twobytwo_name = $picture_two_by_two_files->getName();
					$picture_two_by_two_files->move(ROOTPATH.'public/uploads/', $filepath_twobytwo_name);
					
				}
			}else{
				$filepath_twobytwo_name = $this->data['studentadmission_files']['picture_two_by_two_files'];
			}
											
			$data = [
				'studID' => $id,
				'sar_pupcct_results_files' => !empty($filepath_sar_pupcct_results_name) ? $filepath_sar_pupcct_results_name: NULL ,
				'f137_files' => !empty($filepath_f137_name) ? $filepath_f137_name: NULL, 
				'g10_files' => !empty($filepath_g10_name) ? $filepath_g10_name: NULL, 
				'g11_files' => !empty($filepath_g11_name) ? $filepath_g11_name: NULL, 
				'g12_files' => !empty($filepath_g12_name) ? $filepath_g12_name: NULL, 
				'psa_nso_files' => !empty($filepath_psa_nso_name) ? $filepath_psa_nso_name: NULL, 
				'good_moral_files' => !empty($filepath_good_moral_name) ? $filepath_good_moral_name: NULL, 
				'medical_cert_files' => !empty($filepath_medicalcert_name) ? $filepath_medicalcert_name: NULL, 
				'picture_two_by_two_files' => !empty($filepath_twobytwo_name) ? $filepath_twobytwo_name: NULL
			];
			
			// die(print_r($data));

			if($edit == true){ 
				if ($getStudentAdFileModel->setUpdateAdmissionFiles($this->data['studentadmission_files']['id'],$data)){
					$this->session->setFlashData('success', 'Successfully Updated!');
					return redirect()->to(base_url('studentadmission/view-admission-history/'.$id));
				}else{
					
					$this->session->setFlashData('error', 'Please Contact School IT Support!');
					return redirect()->to(base_url('studentadmission/view-admission-history/'.$id));
				}
			}else{
				if ($getStudentAdFileModel->setInsertAdmissionFiles($data)){
					$this->session->setFlashData('success', 'Successfully Inserted!');
					return redirect()->to(base_url('studentadmission/view-admission-history/'.$id));
				}else{
					
					$this->session->setFlashData('error', 'Please Contact School IT Support!');
					return redirect()->to(base_url('studentadmission/view-admission-history/'.$id));
				}
			}
			
			
			
		}
		
	    return view('template/index', $this->data);
	}

	 public function StudentAdDocumentStatus($id){
		
		$model = new AdmissionDocumentStatusModel(); 
		$getStudentFileImages = new StudentadmissionfilesModel;
		$getstudent = new StudentsModel;
		// die(print_r($_POST));

		helper(['form']);
		if ($this->request->getMethod() == 'post'){
			if(!$this->validate('admissionStatus')){
				$this->data['errors'] = $this->validation->getErrors();
                $this->data['value'] = $_POST;
				
			} else {
			    
				// die(print_r($_POST));
				if($_POST['sar_pupcet_result_status'] == 'approve' && $_POST['f137_status'] == 'approve' && $_POST['g10_status'] == 'approve' &&
					$_POST['g11_status'] == 'approve' && $_POST['g12_status'] == 'approve' &&  $_POST['psa_nso_status'] == 'approve' &&
					$_POST['goodmoral_status'] == 'approve' && $_POST['medical_cert_status'] == 'approve' && $_POST['pictwobytwo_status'] == 'approve'){

					
					$admissionStatusData = [
						'sar_pupcet_result_status' => ['SAR Form/PUPCET/CAEPUP Result',$_POST['sar_pupcet_result_status']],
						'f137_status' => ['Form 137',$_POST['f137_status']],
						'g10_status' => ['Grade 10 Card',$_POST['g10_status']],
						'g11_status' => ['Grade 11 Card',$_POST['g11_status']],
						'g12_status' => ['Grade 12 Card',$_POST['g12_status']],
						'psa_nso_status' => ['PSA/NSO Birth Certificate',$_POST['psa_nso_status']],
						'good_moral_status' => ['Certification of Good Moral',$_POST['goodmoral_status']],
						'medical_cert_status' => ['Medical Clearance',$_POST['medical_cert_status']],
						'twobytwo_status' => ['2x2 Picture',$_POST['pictwobytwo_status']],
						'upload_status' => 'complete'
					];

				} else { 
					$admissionStatusData = [
						'sar_pupcet_result_status' => ['SAR Form/PUPCET/CAEPUP Result',$_POST['sar_pupcet_result_status']],
						'f137_status' => ['Form 137',$_POST['f137_status']],
						'g10_status' => ['Grade 10 Card',$_POST['g10_status']],
						'g11_status' => ['Grade 11 Card',$_POST['g11_status']],
						'g12_status' => ['Grade 12 Card',$_POST['g12_status']],
						'psa_nso_status' => ['PSA/NSO Birth Certificate',$_POST['psa_nso_status']],
						'good_moral_status' => ['Certification of Good Moral',$_POST['goodmoral_status']],
						'medical_cert_status' => ['Medical Clearance',$_POST['medical_cert_status']],
						'twobytwo_status' => ['2x2 Picture',$_POST['pictwobytwo_status']],
						'upload_status' => 'incomplete'
					];
					$admissionRejectStatusData = [
						'sar_pupcct_results_files'=>$_POST['sar_pupcet_result_status'], 
						'f137_files'=>$_POST['f137_status'], 
						'g10_files'=>$_POST['g10_status'], 
						'g11_files'=>$_POST['g11_status'], 
						'g12_files'=>$_POST['g12_status'], 
						'psa_nso_files'=>$_POST['psa_nso_status'], 
						'good_moral_files'=>$_POST['goodmoral_status'], 
						'medical_cert_files'=>$_POST['medical_cert_status'], 
						'picture_two_by_two_files'=>$_POST['pictwobytwo_status'],
						
					];
					
				
				}

				// die(print_r($_POST));
				// die(print_r($admissionStatusData));
				
				if($model->__updateAdmissionDocument($id, $admissionStatusData)){
					// die($admissionStatusData['upload_status']);
					if($admissionStatusData['upload_status'] == 'complete'){
						$this->session->setFlashData('success', 'Email sent successfully!');
						return redirect()->to(base_url('admission'));
					}else{
						if($getStudentFileImages->setUpdateAdmissionFilesReject($id, $admissionRejectStatusData)){

							$this->session->setFlashData('success', 'Email sent successfully!');
							return redirect()->to(base_url('admission'));
						}else{
							$this->session->setFlashData('error', 'Failed to reject items!');
							return redirect()->to(base_url('admission'));
						}
					}
					
				}else{
					$this->session->setFlashData('error', 'Something went wrong!');
					return redirect()->to(base_url('admission'));
				}
			}
		}
		
		$this->data['image_file_record'] = $getStudentFileImages->__getStudentImageFiles($id);
		$this->data['student'] = $getstudent->__getStudentWhereEqualToUserID($id);
		if ($this->isAjax()) {
				return view('admissionoffice/components/student_admission_files_gallery', $this->data);
		}
		echo view('admissionoffice/header', $this->data);
		echo view('admissionoffice/components/student_admission_files_gallery', $this->data);
		return view('admissionoffice/footer', $this->data);
	
	}
	


	 public function admissionretrievedreport()
	 {
		$getstudent = new StudentsModel;
		$getchecklist = new ChecklistModel;
		$getstudentadmissionmodel = new StudentadmissionModel;
		$getRetrievedRecord = new RefForRetrievedModel;

		 $pdf = new Pdf('L', PDF_UNIT, PDF_PAGE_FORMAT, true, 'UTF-8', false);
 
		 // set document information
		 $pdf->SetCreator(PDF_CREATOR);
		 $pdf->SetAuthor('PUPT Taguig OCT-DRS');
		 $pdf->SetTitle('Report');
		 $pdf->SetSubject('Document Request Report');
		 $pdf->SetKeywords('Report, ODRS, Document');
 
		 // set default header data
		 $pdf->SetHeaderData('header.png', '120', '', '');
 
		 // set header and footer fonts
		 $pdf->setHeaderFont(Array(PDF_FONT_NAME_MAIN, '', PDF_FONT_SIZE_MAIN));
		 $pdf->setFooterFont(Array(PDF_FONT_NAME_DATA, '', PDF_FONT_SIZE_DATA));
 
		 // set default monospaced font
		 $pdf->SetDefaultMonospacedFont(PDF_FONT_MONOSPACED);
 
		 // set margins
		 $pdf->SetMargins(PDF_MARGIN_LEFT, PDF_MARGIN_TOP, PDF_MARGIN_RIGHT);
		 $pdf->SetHeaderMargin(PDF_MARGIN_HEADER);
		 $pdf->SetFooterMargin(PDF_MARGIN_FOOTER);
 
		 // set auto page breaks
		 $pdf->SetAutoPageBreak(TRUE, PDF_MARGIN_BOTTOM);
 
		 // set image scale factor
		 $pdf->setImageScale(PDF_IMAGE_SCALE_RATIO);
 
	 
		 // set some language-dependent strings (optional)
		 if (@file_exists(dirname(__FILE__).'/lang/eng.php')) {
			 require_once(dirname(__FILE__).'/lang/eng.php');
			 $pdf->setLanguageArray($l);
		 }
 
		 // ---------------------------------------------------------
 
		 // set font
 
		 // add a page
		 $pdf->AddPage();
 
 
		 $pdf->SetFont('helvetica', '', 10);
 
		 // -----------------------------------------------------------------------------
			$data['retrieved_record'] = $getRetrievedRecord->__getRetrievedRecord();
			$data['count_incomplete'] = $getstudentadmissionmodel->__getIncompleteDocs();
			$data['count_complete'] = $getstudentadmissionmodel->__getCompleteDocs();
			$data['count_recheck'] = $getstudentadmissionmodel->__getRecheckDocs();
			$data['students'] = $getstudent->__getStudentDetails();
			$data['checklists'] = $getchecklist->__getChecklistDetails();
		 $reportTable = view('Views/admissionoffice/retrievedtableadmissionreport',$data);
 
		 $pdf->writeHTML($reportTable, true, false, false, false, 'center');
 
		 $pdf->SetFont('helvetica', '', 12);
 
 
	 // Fit text on cell by reducing font size
		 $pdf->MultiCell(89, 40, 'Prepared By:
 
	Liwanag L. Maliksi
	 Head of Admission Office', 0, 'C', 0, 0, '', '', true, 0, false, true, 40, 'M' ,true);
		 $pdf->MultiCell(89, 40, '', 0, 'J', 0, 0, '', '', true, 0, false, true, 40, 'M');
		 $pdf->MultiCell(89, 40, 'Noted By:
 
	 Dr. Marissa B. Ferrer
	 Branch Director', 0, 'C', 0, 1, '', '', true, 0, false, true, 40, 'M');
 
 
		 //Close and output PDF document
		 $pdf->Output('admissionreport.pdf', 'I');
 
		 //============================================================+
		 // END OF FILE
		 //============================================================+
		 die();
	 }

	 public function admissionrecheckedreport()
	 {
		$getstudent = new StudentsModel;
		$getstudentadmissionmodel = new StudentadmissionModel;
		$getstudentadmission = new StudentadmissionModel; 

	

		 $pdf = new Pdf('L', PDF_UNIT, PDF_PAGE_FORMAT, true, 'UTF-8', false);
 
		 // set document information
		 $pdf->SetCreator(PDF_CREATOR);
		 $pdf->SetAuthor('PUPT Taguig OCT-DRS');
		 $pdf->SetTitle('Report');
		 $pdf->SetSubject('Document Request Report');
		 $pdf->SetKeywords('Report, ODRS, Document');
 
		 // set default header data
		 $pdf->SetHeaderData('header.png', '120', '', '');
 
		 // set header and footer fonts
		 $pdf->setHeaderFont(Array(PDF_FONT_NAME_MAIN, '', PDF_FONT_SIZE_MAIN));
		 $pdf->setFooterFont(Array(PDF_FONT_NAME_DATA, '', PDF_FONT_SIZE_DATA));
 
		 // set default monospaced font
		 $pdf->SetDefaultMonospacedFont(PDF_FONT_MONOSPACED);
 
		 // set margins
		 $pdf->SetMargins(PDF_MARGIN_LEFT, PDF_MARGIN_TOP, PDF_MARGIN_RIGHT);
		 $pdf->SetHeaderMargin(PDF_MARGIN_HEADER);
		 $pdf->SetFooterMargin(PDF_MARGIN_FOOTER);
 
		 // set auto page breaks
		 $pdf->SetAutoPageBreak(TRUE, PDF_MARGIN_BOTTOM);
 
		 // set image scale factor
		 $pdf->setImageScale(PDF_IMAGE_SCALE_RATIO);
 
	 
		 // set some language-dependent strings (optional)
		 if (@file_exists(dirname(__FILE__).'/lang/eng.php')) {
			 require_once(dirname(__FILE__).'/lang/eng.php');
			 $pdf->setLanguageArray($l);
		 }
 
		 // ---------------------------------------------------------
 
		 // set font
 
		 // add a page
		 $pdf->AddPage();
 
 
		 $pdf->SetFont('helvetica', '', 10);
 
		 // -----------------------------------------------------------------------------
		 $getstudentadmission = new StudentadmissionModel; 
		 $data['count_rechecking'] = $getstudentadmissionmodel->__getRecheckDocs();
		 $data['students'] = $getstudent->__getStudentDetails();
		 $data['res'] = $getstudentadmission->__getSAMDetails($id);
		 
		 $reportTable = view('Views/admissionoffice/recheckedtableadmissionreport',$data);
 
		 $pdf->writeHTML($reportTable, true, false, false, false, 'center');
 
		 $pdf->SetFont('helvetica', '', 12);
 
 
	 // Fit text on cell by reducing font size
		 $pdf->MultiCell(89, 40, 'Prepared By:
 
	Liwanag L. Maliksi
	 Head of Admission Office', 0, 'C', 0, 0, '', '', true, 0, false, true, 40, 'M' ,true);
		 $pdf->MultiCell(89, 40, '', 0, 'J', 0, 0, '', '', true, 0, false, true, 40, 'M');
		 $pdf->MultiCell(89, 40, 'Noted By:
 
	 Dr. Marissa B. Ferrer
	 Branch Director', 0, 'C', 0, 1, '', '', true, 0, false, true, 40, 'M');
 
 
		 //Close and output PDF document
		 $pdf->Output('recheckedreport.pdf', 'I');
 
		 //============================================================+
		 // END OF FILE
		 //============================================================+
		 die();
	 }


	 public function admissionincompletedreport()
	 {
		$getstudent = new StudentsModel;
		$getchecklist = new ChecklistModel;
		$getstudentadmissionmodel = new StudentadmissionModel;
		$getRetrievedRecord = new RefForRetrievedModel;

		 $pdf = new Pdf('L', PDF_UNIT, PDF_PAGE_FORMAT, true, 'UTF-8', false);
 
		 // set document information
		 $pdf->SetCreator(PDF_CREATOR);
		 $pdf->SetAuthor('PUPT Taguig OCT-DRS');
		 $pdf->SetTitle('Report');
		 $pdf->SetSubject('Document Request Report');
		 $pdf->SetKeywords('Report, ODRS, Document');
 
		 // set default header data
		 $pdf->SetHeaderData('header.png', '120', '', '');
 
		 // set header and footer fonts
		 $pdf->setHeaderFont(Array(PDF_FONT_NAME_MAIN, '', PDF_FONT_SIZE_MAIN));
		 $pdf->setFooterFont(Array(PDF_FONT_NAME_DATA, '', PDF_FONT_SIZE_DATA));
 
		 // set default monospaced font
		 $pdf->SetDefaultMonospacedFont(PDF_FONT_MONOSPACED);
 
		 // set margins
		 $pdf->SetMargins(PDF_MARGIN_LEFT, PDF_MARGIN_TOP, PDF_MARGIN_RIGHT);
		 $pdf->SetHeaderMargin(PDF_MARGIN_HEADER);
		 $pdf->SetFooterMargin(PDF_MARGIN_FOOTER);
 
		 // set auto page breaks
		 $pdf->SetAutoPageBreak(TRUE, PDF_MARGIN_BOTTOM);
 
		 // set image scale factor
		 $pdf->setImageScale(PDF_IMAGE_SCALE_RATIO);
 
	 
		 // set some language-dependent strings (optional)
		 if (@file_exists(dirname(__FILE__).'/lang/eng.php')) {
			 require_once(dirname(__FILE__).'/lang/eng.php');
			 $pdf->setLanguageArray($l);
		 }
 
		 // ---------------------------------------------------------
 
		 // set font
 
		 // add a page
		 $pdf->AddPage();
 
 
		 $pdf->SetFont('helvetica', '', 10);
 
		 // -----------------------------------------------------------------------------
			$data['retrieved_record'] = $getRetrievedRecord->__getRetrievedRecord();
			$data['count_incomplete'] = $getstudentadmissionmodel->__getIncompleteDocs();
			$data['count_complete'] = $getstudentadmissionmodel->__getCompleteDocs();
			$data['count_recheck'] = $getstudentadmissionmodel->__getRecheckDocs();
			$data['students'] = $getstudent->__getStudentDetails();
			$data['checklists'] = $getchecklist->__getChecklistDetails();
		 $reportTable = view('Views/admissionoffice/incompletedtableadmissionreport',$data);
 
		 $pdf->writeHTML($reportTable, true, false, false, false, 'center');
 
		 $pdf->SetFont('helvetica', '', 12);
 
 
	 // Fit text on cell by reducing font size
		 $pdf->MultiCell(89, 40, 'Prepared By:
 
	Liwanag L. Maliksi
	 Head of Admission Office', 0, 'C', 0, 0, '', '', true, 0, false, true, 40, 'M' ,true);
		 $pdf->MultiCell(89, 40, '', 0, 'J', 0, 0, '', '', true, 0, false, true, 40, 'M');
		 $pdf->MultiCell(89, 40, 'Noted By:
 
	 Dr. Marissa B. Ferrer
	 Branch Director', 0, 'C', 0, 1, '', '', true, 0, false, true, 40, 'M');
 
 
		 //Close and output PDF document
		 $pdf->Output('incompletedreport.pdf', 'I');
 
		 //============================================================+
		 // END OF FILE
		 //============================================================+
		 die();
	 }

	 public function admissioncompletedreport()
	 {
		$getstudent = new StudentsModel;
		$getstudentadmissionmodel = new StudentadmissionModel;

		

		 $pdf = new Pdf('L', PDF_UNIT, PDF_PAGE_FORMAT, true, 'UTF-8', false);
 
		 // set document information
		 $pdf->SetCreator(PDF_CREATOR);
		 $pdf->SetAuthor('PUPT Taguig OCT-DRS');
		 $pdf->SetTitle('Report');
		 $pdf->SetSubject('Document Request Report');
		 $pdf->SetKeywords('Report, ODRS, Document');
 
		 // set default header data
		 $pdf->SetHeaderData('header.png', '120', '', '');
 
		 // set header and footer fonts
		 $pdf->setHeaderFont(Array(PDF_FONT_NAME_MAIN, '', PDF_FONT_SIZE_MAIN));
		 $pdf->setFooterFont(Array(PDF_FONT_NAME_DATA, '', PDF_FONT_SIZE_DATA));
 
		 // set default monospaced font
		 $pdf->SetDefaultMonospacedFont(PDF_FONT_MONOSPACED);
 
		 // set margins
		 $pdf->SetMargins(PDF_MARGIN_LEFT, PDF_MARGIN_TOP, PDF_MARGIN_RIGHT);
		 $pdf->SetHeaderMargin(PDF_MARGIN_HEADER);
		 $pdf->SetFooterMargin(PDF_MARGIN_FOOTER);
 
		 // set auto page breaks
		 $pdf->SetAutoPageBreak(TRUE, PDF_MARGIN_BOTTOM);
 
		 // set image scale factor
		 $pdf->setImageScale(PDF_IMAGE_SCALE_RATIO);
 
	 
		 // set some language-dependent strings (optional)
		 if (@file_exists(dirname(__FILE__).'/lang/eng.php')) {
			 require_once(dirname(__FILE__).'/lang/eng.php');
			 $pdf->setLanguageArray($l);
		 }
 
		 // ---------------------------------------------------------
 
		 // set font
 
		 // add a page
		 $pdf->AddPage();
 
 
		 $pdf->SetFont('helvetica', '', 10);
 
		 // -----------------------------------------------------------------------------
		 $data['count_complete'] = $getstudentadmissionmodel->__getCompleteDocs();
		 $data['students'] = $getstudent->__getStudentDetails();
		 $reportTable = view('Views/admissionoffice/completedtableadmissionreport',$data);
 
		 $pdf->writeHTML($reportTable, true, false, false, false, 'center');
 
		 $pdf->SetFont('helvetica', '', 12);
 
 
	 // Fit text on cell by reducing font size
		 $pdf->MultiCell(89, 40, 'Prepared By:
 
	Liwanag L. Maliksi
	 Head of Admission Office', 0, 'C', 0, 0, '', '', true, 0, false, true, 40, 'M' ,true);
		 $pdf->MultiCell(89, 40, '', 0, 'J', 0, 0, '', '', true, 0, false, true, 40, 'M');
		 $pdf->MultiCell(89, 40, 'Noted By:
 
	 Dr. Marissa B. Ferrer
	 Branch Director', 0, 'C', 0, 1, '', '', true, 0, false, true, 40, 'M');
 
 
		 //Close and output PDF document
		 $pdf->Output('admissionreport.pdf', 'I');
 
		 //============================================================+
		 // END OF FILE
		 //============================================================+
		 die();
	 }


	 public function admissionreport()
	 {
		$getstudent = new StudentsModel;
		$getchecklist = new ChecklistModel;
		$getstudentadmissionmodel = new StudentadmissionModel;
		$getRetrievedRecord = new RefForRetrievedModel;

		 $pdf = new Pdf('L', PDF_UNIT, PDF_PAGE_FORMAT, true, 'UTF-8', false);
 
		 // set document information
		 $pdf->SetCreator(PDF_CREATOR);
		 $pdf->SetAuthor('PUPT Taguig OCT-DRS');
		 $pdf->SetTitle('Report');
		 $pdf->SetSubject('Document Request Report');
		 $pdf->SetKeywords('Report, ODRS, Document');
 
		 // set default header data
		 $pdf->SetHeaderData('header.png', '120', '', '');
 
		 // set header and footer fonts
		 $pdf->setHeaderFont(Array(PDF_FONT_NAME_MAIN, '', PDF_FONT_SIZE_MAIN));
		 $pdf->setFooterFont(Array(PDF_FONT_NAME_DATA, '', PDF_FONT_SIZE_DATA));
 
		 // set default monospaced font
		 $pdf->SetDefaultMonospacedFont(PDF_FONT_MONOSPACED);
 
		 // set margins
		 $pdf->SetMargins(PDF_MARGIN_LEFT, PDF_MARGIN_TOP, PDF_MARGIN_RIGHT);
		 $pdf->SetHeaderMargin(PDF_MARGIN_HEADER);
		 $pdf->SetFooterMargin(PDF_MARGIN_FOOTER);
 
		 // set auto page breaks
		 $pdf->SetAutoPageBreak(TRUE, PDF_MARGIN_BOTTOM);
 
		 // set image scale factor
		 $pdf->setImageScale(PDF_IMAGE_SCALE_RATIO);
 
	 
		 // set some language-dependent strings (optional)
		 if (@file_exists(dirname(__FILE__).'/lang/eng.php')) {
			 require_once(dirname(__FILE__).'/lang/eng.php');
			 $pdf->setLanguageArray($l);
		 }
 
		 // ---------------------------------------------------------
 
		 // set font
 
		 // add a page
		 $pdf->AddPage();
 
 
		 $pdf->SetFont('helvetica', '', 10);
 
		 // -----------------------------------------------------------------------------
			$data['retrieved_record'] = $getRetrievedRecord->__getRetrievedRecord();
			$data['count_incomplete'] = $getstudentadmissionmodel->__getIncompleteDocs();
			$data['count_complete'] = $getstudentadmissionmodel->__getCompleteDocs();
			$data['count_recheck'] = $getstudentadmissionmodel->__getRecheckDocs();
			$data['students'] = $getstudent->__getStudentDetails();
			$data['checklists'] = $getchecklist->__getChecklistDetails();
		 $reportTable = view('Views/admissionoffice/admissiondashboardreport',$data);
 
		 $pdf->writeHTML($reportTable, true, false, false, false, 'center');
 
		 $pdf->SetFont('helvetica', '', 12);
 
 
	 // Fit text on cell by reducing font size
		 $pdf->MultiCell(89, 40, 'Prepared By:
 
	Liwanag L. Maliksi
	 Head of Admission Office', 0, 'C', 0, 0, '', '', true, 0, false, true, 40, 'M' ,true);
		 $pdf->MultiCell(89, 40, '', 0, 'J', 0, 0, '', '', true, 0, false, true, 40, 'M');
		 $pdf->MultiCell(89, 40, 'Noted By:
 
	 Dr. Marissa B. Ferrer
	 Branch Director', 0, 'C', 0, 1, '', '', true, 0, false, true, 40, 'M');
 
 
		 //Close and output PDF document
		 $pdf->Output('admissionreport.pdf', 'I');
 
		 //============================================================+
		 // END OF FILE
		 //============================================================+
		 die();
	 }

	//uploaded documents - report
	public function admissioncompleteuploadreport()
	 {
		$getstudent = new StudentsModel;
		$getstudentadmissionmodel = new StudentadmissionModel;

		

		 $pdf = new Pdf('L', PDF_UNIT, PDF_PAGE_FORMAT, true, 'UTF-8', false);
 
		 // set document information
		 $pdf->SetCreator(PDF_CREATOR);
		 $pdf->SetAuthor('PUPT Taguig OCT-DRS');
		 $pdf->SetTitle('Report');
		 $pdf->SetSubject('Document Request Report');
		 $pdf->SetKeywords('Report, ODRS, Document');
 
		 // set default header data
		 $pdf->SetHeaderData('header.png', '120', '', '');
 
		 // set header and footer fonts
		 $pdf->setHeaderFont(Array(PDF_FONT_NAME_MAIN, '', PDF_FONT_SIZE_MAIN));
		 $pdf->setFooterFont(Array(PDF_FONT_NAME_DATA, '', PDF_FONT_SIZE_DATA));
 
		 // set default monospaced font
		 $pdf->SetDefaultMonospacedFont(PDF_FONT_MONOSPACED);
 
		 // set margins
		 $pdf->SetMargins(PDF_MARGIN_LEFT, PDF_MARGIN_TOP, PDF_MARGIN_RIGHT);
		 $pdf->SetHeaderMargin(PDF_MARGIN_HEADER);
		 $pdf->SetFooterMargin(PDF_MARGIN_FOOTER);
 
		 // set auto page breaks
		 $pdf->SetAutoPageBreak(TRUE, PDF_MARGIN_BOTTOM);
 
		 // set image scale factor
		 $pdf->setImageScale(PDF_IMAGE_SCALE_RATIO);
 
	 
		 // set some language-dependent strings (optional)
		 if (@file_exists(dirname(__FILE__).'/lang/eng.php')) {
			 require_once(dirname(__FILE__).'/lang/eng.php');
			 $pdf->setLanguageArray($l);
		 }
 
		 // ---------------------------------------------------------
 
		 // set font
 
		 // add a page
		 $pdf->AddPage();
 
 
		 $pdf->SetFont('helvetica', '', 10);
 
		 // -----------------------------------------------------------------------------
		 $data['count_complete'] = $getstudentadmissionmodel->__getCompleteDocs();
		 $data['students'] = $getstudent->__getStudentDetails();
		 $reportTable = view('Views/admissionoffice/completeuploadreport',$data);
 
		 $pdf->writeHTML($reportTable, true, false, false, false, 'center');
 
		 $pdf->SetFont('helvetica', '', 12);
 
 
	 // Fit text on cell by reducing font size
		 $pdf->MultiCell(89, 40, 'Prepared By:
 
	Liwanag L. Maliksi
	 Head of Admission Office', 0, 'C', 0, 0, '', '', true, 0, false, true, 40, 'M' ,true);
		 $pdf->MultiCell(89, 40, '', 0, 'J', 0, 0, '', '', true, 0, false, true, 40, 'M');
		 $pdf->MultiCell(89, 40, 'Noted By:
 
	 Dr. Marissa B. Ferrer
	 Branch Director', 0, 'C', 0, 1, '', '', true, 0, false, true, 40, 'M');
 
 
		 //Close and output PDF document
		 $pdf->Output('admissionreport.pdf', 'I');
 
		 //============================================================+
		 // END OF FILE
		 //============================================================+
		 die();
	 }
	 public function admissionincompleteuploadreport()
	 {
		$getstudent = new StudentsModel;
		$getstudentadmissionmodel = new StudentadmissionModel;

		

		 $pdf = new Pdf('L', PDF_UNIT, PDF_PAGE_FORMAT, true, 'UTF-8', false);
 
		 // set document information
		 $pdf->SetCreator(PDF_CREATOR);
		 $pdf->SetAuthor('PUPT Taguig OCT-DRS');
		 $pdf->SetTitle('Report');
		 $pdf->SetSubject('Document Request Report');
		 $pdf->SetKeywords('Report, ODRS, Document');
 
		 // set default header data
		 $pdf->SetHeaderData('header.png', '120', '', '');
 
		 // set header and footer fonts
		 $pdf->setHeaderFont(Array(PDF_FONT_NAME_MAIN, '', PDF_FONT_SIZE_MAIN));
		 $pdf->setFooterFont(Array(PDF_FONT_NAME_DATA, '', PDF_FONT_SIZE_DATA));
 
		 // set default monospaced font
		 $pdf->SetDefaultMonospacedFont(PDF_FONT_MONOSPACED);
 
		 // set margins
		 $pdf->SetMargins(PDF_MARGIN_LEFT, PDF_MARGIN_TOP, PDF_MARGIN_RIGHT);
		 $pdf->SetHeaderMargin(PDF_MARGIN_HEADER);
		 $pdf->SetFooterMargin(PDF_MARGIN_FOOTER);
 
		 // set auto page breaks
		 $pdf->SetAutoPageBreak(TRUE, PDF_MARGIN_BOTTOM);
 
		 // set image scale factor
		 $pdf->setImageScale(PDF_IMAGE_SCALE_RATIO);
 
	 
		 // set some language-dependent strings (optional)
		 if (@file_exists(dirname(__FILE__).'/lang/eng.php')) {
			 require_once(dirname(__FILE__).'/lang/eng.php');
			 $pdf->setLanguageArray($l);
		 }
 
		 // ---------------------------------------------------------
 
		 // set font
 
		 // add a page
		 $pdf->AddPage();
 
 
		 $pdf->SetFont('helvetica', '', 10);
 
		 // -----------------------------------------------------------------------------
		 $data['count_complete'] = $getstudentadmissionmodel->__getCompleteDocs();
		 $data['students'] = $getstudent->__getStudentDetails();
		 $reportTable = view('Views/admissionoffice/incompleteuploadreport',$data);
 
		 $pdf->writeHTML($reportTable, true, false, false, false, 'center');
 
		 $pdf->SetFont('helvetica', '', 12);
 
 
	 // Fit text on cell by reducing font size
		 $pdf->MultiCell(89, 40, 'Prepared By:
 
	Liwanag L. Maliksi
	 Head of Admission Office', 0, 'C', 0, 0, '', '', true, 0, false, true, 40, 'M' ,true);
		 $pdf->MultiCell(89, 40, '', 0, 'J', 0, 0, '', '', true, 0, false, true, 40, 'M');
		 $pdf->MultiCell(89, 40, 'Noted By:
 
	 Dr. Marissa B. Ferrer
	 Branch Director', 0, 'C', 0, 1, '', '', true, 0, false, true, 40, 'M');
 
 
		 //Close and output PDF document
		 $pdf->Output('admissionreport.pdf', 'I');
 
		 //============================================================+
		 // END OF FILE
		 //============================================================+
		 die();
	 }

	public function index()
	{
		$getstudent = new StudentsModel;
		$getchecklist = new ChecklistModel;
		$getstudentadmissionmodel = new StudentadmissionModel;
		$getRetrievedRecord = new RefForRetrievedModel;

		$this->data['retrieved_record'] = $getRetrievedRecord->__getRetrievedRecord();
		$this->data['count_incomplete'] = $getstudentadmissionmodel->__getIncompleteDocs(); 
		$this->data['count_complete'] = $getstudentadmissionmodel->__getCompleteDocs();
		$this->data['count_recheck'] = $getstudentadmissionmodel->__getRecheckDocs();
		$this->data['count_complete_uploads'] = $getstudentadmissionmodel->getcompleteuploads();
		$this->data['count_incomplete_uploads'] = $getstudentadmissionmodel->getincompleteuploads();
		$this->data['students'] = $getstudent->__getStudentDetails();
		// die(print_r($this->data['students']));
		$this->data['students_admission'] = $getstudentadmissionmodel->__getStudentAdmissionDetails();
		// die(print_r($this->data['students_admission']));
		$this->data['checklists'] = $getchecklist->__getChecklistDetails();
		if ($this->isAjax()) {
			return view('admissionoffice/admissiondashboard', $this->data);
		}
		echo view('admissionoffice/header', $this->data);
		echo view('admissionoffice/admissiondashboard', $this->data);
		return view('admissionoffice/footer', $this->data);
	}
	
	public function showStudentForm()
	{
		$getcourses = new CourseModel;
		$this->data['courses'] = $getcourses->__getStudentCourse();

		if ($this->isAjax()) {
				return view('admissionoffice/components/addstudents', $this->data);
			}
		echo view('admissionoffice/header', $this->data);
		echo view('admissionoffice/components/addstudents', $this->data);
		return view('admissionoffice/footer', $this->data);
	}
	public function insertstudent()
	{
		if (! $this->validate([
            'student_number' => 'required|exact_length[15]|alpha_dash|regex_match[/[0-9]{4}-[0-9]{5}-TG-0/]|is_unique[students.student_number,id]',
			'firstname' => 'required',
			'lastname' => 'required',
			'birthdate' => 'required',
			'middlename' => 'required',
			'email' => 'required|valid_email|is_unique[users.email,id]',
			'course_id' => 'required'
        ])) {

			$getcourses = new CourseModel;

        	echo view('admissionoffice/header');
            return view('admissionoffice/components/addstudents', [
                'errors' => $this->validator->getErrors(),
                'courses' => $getcourses->__getStudentCourse()
            ]);
        	echo view('admissionoffice/footer');
        }
	
		$data = [
			'student_number' => $_POST['student_number'],
			'firstname'  => $_POST['firstname'],
			'lastname'  => $_POST['lastname'],
			'middlename'  => $_POST['middlename'],
			'birthdate'  => $_POST['birthdate'],
			'email' => $_POST['email'],
			'course_id' => $_POST['course_id']
		];
		$res = $this->studentModel->insertStudent($data);

		if ($res) {
			$this->session->setFlashData('success', 'Successfully Added Student');
			return redirect()->to(base_url('admission'));
		}else{
			$this->session->setFlashData('error', 'Error');
			return redirect()->to(base_url('admission/add-student-form'));
		}
	}
	public function showStudentCompleteAdmission()
	{
		$getstudent = new StudentsModel;
		$getstudentadmissionmodel = new StudentadmissionModel;

		$this->data['count_complete'] = $getstudentadmissionmodel->__getCompleteDocs();
		$this->data['students'] = $getstudent->__getStudentDetails();

		if ($this->isAjax()) {
				return view('admissionoffice/components/completedstudentdocuments', $this->data);
			}
		echo view('admissionoffice/header', $this->data);
		echo view('admissionoffice/components/completedstudentdocuments', $this->data);
		return view('admissionoffice/footer', $this->data);
	}
	public function showStudentCompleteAdmission1()
	{
		$getstudent = new StudentsModel;
		$getstudentadmissionmodel = new StudentadmissionModel;

		$this->data['count_complete'] = $getstudentadmissionmodel->__getCompleteDocs();
		$this->data['students'] = $getstudent->__getStudentDetails();

		if ($this->isAjax()) {
				return view('admissionoffice/components/completedstudentdocuments1', $this->data);
			}
		echo view('admissionoffice/regheader', $this->data);
		echo view('admissionoffice/components/completedstudentdocuments1', $this->data);
		return view('admissionoffice/footer', $this->data);
	}
	public function insertStudentAdmissionForwarded($id)
	{
		$getstudent = new StudentsModel;
		$getchecklist = new ChecklistModel;
		$getstudentadmissionmodel = new StudentadmissionModel;
		$getRetrievedRecord = new RefForRetrievedModel;

		$this->data['retrieved_record'] = $getRetrievedRecord->__getRetrievedRecord();
		$this->data['count_incomplete'] = $getstudentadmissionmodel->__getIncompleteDocs();
		$this->data['count_complete'] = $getstudentadmissionmodel->__getCompleteDocs();
		$this->data['count_recheck'] = $getstudentadmissionmodel->__getRecheckDocs();
		$this->data['students'] = $getstudent->__getStudentDetails();
		$this->data['checklists'] = $getchecklist->__getChecklistDetails();

		$insertstudentadmission = new StudentadmissionModel;
		$is_result = $insertstudentadmission->__getSAMDetails($id);
		//die(print_r($_POST));
		if($_POST['admission_status']=='select_status'){
			$this->session->setFlashData('error', 'Please select admission status!');
		}

		if (!empty($is_result)) {	
			$data = [
				'studID'=> $id,	
				'sar_pupcct_resultID'=> (!empty($_POST['sar_pupcct_resultID']) ? $_POST['sar_pupcct_resultID'] : 0),
				'f137ID'=> (!empty($_POST['f137ID']) ? $_POST['f137ID'] : 0),
				'f138ID'=> (!empty($_POST['f138ID']) ? $_POST['f138ID'] : 0),
				'psa_nsoID'=> (!empty($_POST['psa_nsoID']) ? $_POST['psa_nsoID'] : 0),
				'good_moralID'=> (!empty($_POST['good_moralID']) ? $_POST['good_moralID'] : 0),
				'medical_certID'=> (!empty($_POST['medical_certID']) ? $_POST['medical_certID'] : 0),
				'picture_two_by_twoID'=> (!empty($_POST['picture_two_by_twoID']) ? $_POST['picture_two_by_twoID'] : 0),
				'nc_non_enrollmentID'=> (!empty($_POST['nc_non_enrollmentID']) ? $_POST['nc_non_enrollmentID'] : 0),
				'coc_hs_shsID'=> (!empty($_POST['coc_hs_shsID']) ? $_POST['coc_hs_shsID'] : 0),
				'ac_pept_alsID'=> (!empty($_POST['ac_pept_alsID']) ? $_POST['ac_pept_alsID'] : 0),
				'cert_dry_sealID'=> (!empty($_POST['cert_dry_sealID']) ? $_POST['cert_dry_sealID'] : 0),
				'cert_dry_sealID_twelve'=> (!empty($_POST['cert_dry_sealID_twelve']) ? $_POST['cert_dry_sealID_twelve'] : 0),
				'admission_status'=> (!empty($_POST['admission_status']) ? $_POST['admission_status'] : ""),
				'app_grad'=> (!empty($_POST['app_grad']) ? $_POST['app_grad'] : 0),
				'or_app_grad'=> (!empty($_POST['or_app_grad']) ? $_POST['or_app_grad'] : 0),
				'latest_regi'=> (!empty($_POST['latest_regi']) ? $_POST['latest_regi'] : 0),
				'eval_res'=> (!empty($_POST['eval_res']) ? $_POST['eval_res'] : 0),
				'course_curri'=> (!empty($_POST['course_curri']) ? $_POST['course_curri'] : 0),
				'cert_candi'=> (!empty($_POST['cert_candi']) ? $_POST['cert_candi'] : 0),
				'gen_clear'=> (!empty($_POST['gen_clear']) ? $_POST['gen_clear'] : 0),
				'or_grad_fee'=> (!empty($_POST['or_grad_fee']) ? $_POST['or_grad_fee'] : 0),
				'cert_confer'=> (!empty($_POST['cert_confer']) ? $_POST['cert_confer'] : 0),
				'schoolid'=> (!empty($_POST['schoolid']) ? $_POST['schoolid'] : 0),
				'honor_dis'=> (!empty($_POST['honor_dis']) ? $_POST['honor_dis'] : 0),
				'trans_rec'=> (!empty($_POST['trans_rec']) ? $_POST['trans_rec'] : 0),
				'certificate_of_completion' => (!empty($_POST['certificate_of_completion']) ? $_POST['certificate_of_completion'] : null)
			];
			
			// die($_POST['admission_status']);
			$res = $insertstudentadmission->updateAdmissionStudents($id, $data, (!empty($_POST['admission_status']) ? $_POST['admission_status'] : ""));
		}else{	
			$data = [
				'studID'=> $id,	
				'sar_pupcct_resultID'=> (!empty($_POST['sar_pupcct_resultID']) ? $_POST['sar_pupcct_resultID'] : 0),
				'f137ID'=> (!empty($_POST['f137ID']) ? $_POST['f137ID'] : 0),
				'f138ID'=> (!empty($_POST['f138ID']) ? $_POST['f138ID'] : 0),
				'psa_nsoID'=> (!empty($_POST['psa_nsoID']) ? $_POST['psa_nsoID'] : 0),
				'good_moralID'=> (!empty($_POST['good_moralID']) ? $_POST['good_moralID'] : 0),
				'medical_certID'=> (!empty($_POST['medical_certID']) ? $_POST['medical_certID'] : 0),
				'picture_two_by_twoID'=> (!empty($_POST['picture_two_by_twoID']) ? $_POST['picture_two_by_twoID'] : 0),
				'nc_non_enrollmentID'=> (!empty($_POST['nc_non_enrollmentID']) ? $_POST['nc_non_enrollmentID'] : 0),
				'coc_hs_shsID'=> (!empty($_POST['coc_hs_shsID']) ? $_POST['coc_hs_shsID'] : 0),
				'ac_pept_alsID'=> (!empty($_POST['ac_pept_alsID']) ? $_POST['ac_pept_alsID'] : 0),
				'cert_dry_sealID'=> (!empty($_POST['cert_dry_sealID']) ? $_POST['cert_dry_sealID'] : 0),
				'cert_dry_sealID_twelve'=> (!empty($_POST['cert_dry_sealID_twelve']) ? $_POST['cert_dry_sealID_twelve'] : 0),
				'admission_status'=> (!empty($_POST['admission_status']) ? $_POST['admission_status'] : ""),
				'app_grad'=> (!empty($_POST['app_grad']) ? $_POST['app_grad'] : 0),
				'or_app_grad'=> (!empty($_POST['or_app_grad']) ? $_POST['or_app_grad'] : 0),
				'latest_regi'=> (!empty($_POST['latest_regi']) ? $_POST['latest_regi'] : 0),
				'course_curri'=> (!empty($_POST['course_curri']) ? $_POST['course_curri'] : 0),
				'cert_candi'=> (!empty($_POST['cert_candi']) ? $_POST['cert_candi'] : 0),
				'gen_clear'=> (!empty($_POST['gen_clear']) ? $_POST['gen_clear'] : 0),
				'or_grad_fee'=> (!empty($_POST['or_grad_fee']) ? $_POST['or_grad_fee'] : 0),
				'cert_confer'=> (!empty($_POST['cert_confer']) ? $_POST['cert_confer'] : 0),
				'schoolid'=> (!empty($_POST['schoolid']) ? $_POST['schoolid'] : 0),
				'honor_dis'=> (!empty($_POST['honor_dis']) ? $_POST['honor_dis'] : 0),
				'trans_rec'=> (!empty($_POST['trans_rec']) ? $_POST['trans_rec'] : 0),
				'certificate_of_completion' => (!empty($_POST['certificate_of_completion']) ? $_POST['certificate_of_completion'] : null)
			];
			
			$res = $insertstudentadmission->insertAdmissionStudents($id, $data, (!empty($_POST['admission_status']) ? $_POST['admission_status'] : ""));
		}
		

		
//CHECKLIST ALERT
		if ($res) {
			
			if ($res['admission_status'] == 'complete') {
				return redirect()->to(base_url('admission/complete'));
			}elseif ($res['admission_status'] == 'incomplete') {
				return redirect()->to(base_url('admission/notify/'.$res['userID']));
			}elseif ($res['admission_status'] == 'rechecking') {
				return redirect()->to(base_url('admission/request-rechecking/'));
			} else {
				$this->session->setFlashData('error', 'Error encountered!');
				return redirect()->to(base_url('admission'));
			}}
		
		if ($this->isAjax()) {
			return view('admissionoffice/admissiondashboard', $this->data);
		}
		echo view('admissionoffice/header', $this->data);
		echo view('admissionoffice/admissiondashboard', $this->data);
		return view('admissionoffice/footer', $this->data);
	}

// 	public function insertStudentAdmissionForwarded1($id)
// 	{
// 		$getstudent = new StudentsModel;
// 		$getchecklist = new ChecklistModel;
// 		$getstudentadmissionmodel = new StudentadmissionModel;
// 		$getRetrievedRecord = new RefForRetrievedModel;

// 		$this->data['retrieved_record'] = $getRetrievedRecord->__getRetrievedRecord();
// 		$this->data['count_incomplete'] = $getstudentadmissionmodel->__getIncompleteDocs();
// 		$this->data['count_complete'] = $getstudentadmissionmodel->__getCompleteDocs();
// 		$this->data['count_recheck'] = $getstudentadmissionmodel->__getRecheckDocs();
// 		$this->data['students'] = $getstudent->__getStudentDetails();
// 		$this->data['checklists'] = $getchecklist->__getChecklistDetails();

// 		$insertstudentadmission = new StudentadmissionModel;
// 		$is_result = $insertstudentadmission->__getSAMDetails($id);
// 		//die(print_r($_POST));
// 		if($_POST['admission_status']=='select_status'){
// 			$this->session->setFlashData('error', 'Please select admission status!');
// 		}

// 		if (!empty($is_result)) {	
// 			$data = [
// 				'studID'=> $id,	
// 				'sar_pupcct_resultID'=> (!empty($_POST['sar_pupcct_resultID']) ? $_POST['sar_pupcct_resultID'] : 0),
// 				'f137ID'=> (!empty($_POST['f137ID']) ? $_POST['f137ID'] : 0),
// 				'f138ID'=> (!empty($_POST['f138ID']) ? $_POST['f138ID'] : 0),
// 				'psa_nsoID'=> (!empty($_POST['psa_nsoID']) ? $_POST['psa_nsoID'] : 0),
// 				'good_moralID'=> (!empty($_POST['good_moralID']) ? $_POST['good_moralID'] : 0),
// 				'medical_certID'=> (!empty($_POST['medical_certID']) ? $_POST['medical_certID'] : 0),
// 				'picture_two_by_twoID'=> (!empty($_POST['picture_two_by_twoID']) ? $_POST['picture_two_by_twoID'] : 0),
// 				'nc_non_enrollmentID'=> (!empty($_POST['nc_non_enrollmentID']) ? $_POST['nc_non_enrollmentID'] : 0),
// 				'coc_hs_shsID'=> (!empty($_POST['coc_hs_shsID']) ? $_POST['coc_hs_shsID'] : 0),
// 				'ac_pept_alsID'=> (!empty($_POST['ac_pept_alsID']) ? $_POST['ac_pept_alsID'] : 0),
// 				'cert_dry_sealID'=> (!empty($_POST['cert_dry_sealID']) ? $_POST['cert_dry_sealID'] : 0),
// 				'cert_dry_sealID_twelve'=> (!empty($_POST['cert_dry_sealID_twelve']) ? $_POST['cert_dry_sealID_twelve'] : 0),
// 				'admission_status'=> (!empty($_POST['admission_status']) ? $_POST['admission_status'] : ""),
// 				'app_grad'=> (!empty($_POST['app_grad']) ? $_POST['app_grad'] : 0),
// 				'or_app_grad'=> (!empty($_POST['or_app_grad']) ? $_POST['or_app_grad'] : 0),
// 				'latest_regi'=> (!empty($_POST['latest_regi']) ? $_POST['latest_regi'] : 0),
// 				'eval_res'=> (!empty($_POST['eval_res']) ? $_POST['eval_res'] : 0),
// 				'course_curri'=> (!empty($_POST['course_curri']) ? $_POST['course_curri'] : 0),
// 				'cert_candi'=> (!empty($_POST['cert_candi']) ? $_POST['cert_candi'] : 0),
// 				'gen_clear'=> (!empty($_POST['gen_clear']) ? $_POST['gen_clear'] : 0),
// 				'or_grad_fee'=> (!empty($_POST['or_grad_fee']) ? $_POST['or_grad_fee'] : 0),
// 				'cert_confer'=> (!empty($_POST['cert_confer']) ? $_POST['cert_confer'] : 0),
// 				'schoolid'=> (!empty($_POST['schoolid']) ? $_POST['schoolid'] : 0),
// 				'honor_dis'=> (!empty($_POST['honor_dis']) ? $_POST['honor_dis'] : 0),
// 				'trans_rec'=> (!empty($_POST['trans_rec']) ? $_POST['trans_rec'] : 0)
// 			];
			
// 			$res = $insertstudentadmission->updateAdmissionStudents($id, $data, (!empty($_POST['admission_status']) ? $_POST['admission_status'] : ""));
// 		}else{	
// 			$data = [
// 				'studID'=> $id,	
// 				'sar_pupcct_resultID'=> (!empty($_POST['sar_pupcct_resultID']) ? $_POST['sar_pupcct_resultID'] : 0),
// 				'f137ID'=> (!empty($_POST['f137ID']) ? $_POST['f137ID'] : 0),
// 				'f138ID'=> (!empty($_POST['f138ID']) ? $_POST['f138ID'] : 0),
// 				'psa_nsoID'=> (!empty($_POST['psa_nsoID']) ? $_POST['psa_nsoID'] : 0),
// 				'good_moralID'=> (!empty($_POST['good_moralID']) ? $_POST['good_moralID'] : 0),
// 				'medical_certID'=> (!empty($_POST['medical_certID']) ? $_POST['medical_certID'] : 0),
// 				'picture_two_by_twoID'=> (!empty($_POST['picture_two_by_twoID']) ? $_POST['picture_two_by_twoID'] : 0),
// 				'nc_non_enrollmentID'=> (!empty($_POST['nc_non_enrollmentID']) ? $_POST['nc_non_enrollmentID'] : 0),
// 				'coc_hs_shsID'=> (!empty($_POST['coc_hs_shsID']) ? $_POST['coc_hs_shsID'] : 0),
// 				'ac_pept_alsID'=> (!empty($_POST['ac_pept_alsID']) ? $_POST['ac_pept_alsID'] : 0),
// 				'cert_dry_sealID'=> (!empty($_POST['cert_dry_sealID']) ? $_POST['cert_dry_sealID'] : 0),
// 				'cert_dry_sealID_twelve'=> (!empty($_POST['cert_dry_sealID_twelve']) ? $_POST['cert_dry_sealID_twelve'] : 0),
// 				'admission_status'=> (!empty($_POST['admission_status']) ? $_POST['admission_status'] : ""),
// 				'app_grad'=> (!empty($_POST['app_grad']) ? $_POST['app_grad'] : 0),
// 				'or_app_grad'=> (!empty($_POST['or_app_grad']) ? $_POST['or_app_grad'] : 0),
// 				'latest_regi'=> (!empty($_POST['latest_regi']) ? $_POST['latest_regi'] : 0),
// 				'course_curri'=> (!empty($_POST['course_curri']) ? $_POST['course_curri'] : 0),
// 				'cert_candi'=> (!empty($_POST['cert_candi']) ? $_POST['cert_candi'] : 0),
// 				'gen_clear'=> (!empty($_POST['gen_clear']) ? $_POST['gen_clear'] : 0),
// 				'or_grad_fee'=> (!empty($_POST['or_grad_fee']) ? $_POST['or_grad_fee'] : 0),
// 				'cert_confer'=> (!empty($_POST['cert_confer']) ? $_POST['cert_confer'] : 0),
// 				'schoolid'=> (!empty($_POST['schoolid']) ? $_POST['schoolid'] : 0),
// 				'honor_dis'=> (!empty($_POST['honor_dis']) ? $_POST['honor_dis'] : 0),
// 				'trans_rec'=> (!empty($_POST['trans_rec']) ? $_POST['trans_rec'] : 0)
// 			];
			
// 			$res = $insertstudentadmission->insertAdmissionStudents($id, $data, (!empty($_POST['admission_status']) ? $_POST['admission_status'] : ""));
// 		}
		

		
// //CHECKLIST ALERT
// 		if ($res) {
			
// 			if ($res['admission_status'] == 'complete') {
// 				return redirect()->to(base_url('admissionregistrar/complete1'));
// 			}elseif ($res['admission_status'] == 'incomplete') {
// 				return redirect()->to(base_url('admissionregistrar/notify1/'.$res['userID']));
// 			}elseif ($res['admission_status'] == 'rechecking') {
// 				return redirect()->to(base_url('admissionregistrar/request-rechecking1/'));
// 			} else {
// 				$this->session->setFlashData('error', 'Error encountered!');
// 				return redirect()->to(base_url('admissionregistrar'));
// 			}}
		
// 		if ($this->isAjax()) {
// 			return view('admissionoffice/admissiondashboard1', $this->data);
// 		}
// 		echo view('admissionoffice/regheader', $this->data);
// 		echo view('admissionoffice/admissiondashboard1', $this->data);
// 		return view('admissionoffice/footer', $this->data);
// 	}

	public function showNotifier($id){
		
		$getstudentadmission = new StudentadmissionModel;
		$getchecklist = new ChecklistModel;
		
		$this->data['studentadmission_details'] = $getstudentadmission->__getSAMDetails($id);
		$this->data['checklists'] = $getchecklist->__getChecklistDetails();
		// var_dump($this->data['studentadmission_details']);
		if ($this->isAjax()) {
				return view('admissionoffice/components/notify', $this->data);
			}
		echo view('admissionoffice/header', $this->data);
		echo view('admissionoffice/components/notify', $this->data);
		return view('admissionoffice/footer', $this->data);
	}
	// public function showNotifier1($id){
		
	// 	$getstudentadmission = new StudentadmissionModel;
	// 	$getchecklist = new ChecklistModel;
		
	// 	$this->data['studentadmission_details'] = $getstudentadmission->__getSAMDetails($id);
	// 	$this->data['checklists'] = $getchecklist->__getChecklistDetails();
	// 	// var_dump($this->data['studentadmission_details']);
	// 	if ($this->isAjax()) {
	// 			return view('admissionoffice/components/notify1', $this->data);
	// 		}
	// 	echo view('admissionoffice/regheader', $this->data);
	// 	echo view('admissionoffice/components/notify1', $this->data);
	// 	return view('admissionoffice/footer', $this->data);
	// }
	public function sendLackingDocumentstoMail($id)
	{	
		$getrefmodel = new RefremarksModel;
		$is_result = $getrefmodel->__getadmissionremarks($id);
		if(!empty($is_result)){
			$data = [
				'sc_pup_remarks' => (!empty($_POST['sc_pup_remarks']) ? $_POST['sc_pup_remarks'] : null),
				's_one_photocopy_sarform' => (!empty($_POST['s_one_photocopy_sarform']) ? $_POST['s_one_photocopy_sarform'] : null),
				'submit_original_sarform' => (!empty($_POST['submit_original_sarform']) ? $_POST['submit_original_sarform'] : null),
				'no_dry_sealf137' => (!empty($_POST['no_dry_sealf137']) ? $_POST['no_dry_sealf137'] : null),
				'submit_original_f137' => (!empty($_POST['submit_original_f137']) ? $_POST['submit_original_f137'] : null),			
				'no_dry_sealgrade10' => (!empty($_POST['no_dry_sealgrade10']) ? $_POST['no_dry_sealgrade10'] : null),
				's_one_photocopy_grade10' => (!empty($_POST['s_one_photocopy_grade10']) ? $_POST['s_one_photocopy_grade10'] : null),
				'submit_original_grade10' => (!empty($_POST['submit_original_grade10']) ? $_POST['submit_original_grade10'] : null),		
				'no_dry_sealgrade11' => (!empty($_POST['no_dry_sealgrade11']) ? $_POST['no_dry_sealgrade11'] : null),
				's_one_photocopy_grade11' => (!empty($_POST['s_one_photocopy_grade11']) ? $_POST['s_one_photocopy_grade11'] : null),
				'submit_original_grade11' => (!empty($_POST['submit_original_grade11']) ? $_POST['submit_original_grade11'] : null),		
				'no_dry_sealgrade12' => (!empty($_POST['no_dry_sealgrade12']) ? $_POST['no_dry_sealgrade12'] : null),
				's_one_photocopy_grade12' => (!empty($_POST['s_one_photocopy_grade12']) ? $_POST['s_one_photocopy_grade12'] : null),
				'submit_original_grade12' => (!empty($_POST['submit_original_grade12']) ? $_POST['submit_original_grade12'] : null),
				's_one_photocopy_psa' => (!empty($_POST['s_one_photocopy_psa']) ? $_POST['s_one_photocopy_psa'] : null),
				'submit_original_psa' => (!empty($_POST['submit_original_psa']) ? $_POST['submit_original_psa'] : null),
				'no_dry_sealgoodmoral' => (!empty($_POST['no_dry_sealgoodmoral']) ? $_POST['no_dry_sealgoodmoral'] : null),
				's_one_photocopy_goodmoral' => (!empty($_POST['s_one_photocopy_goodmoral']) ? $_POST['s_one_photocopy_goodmoral'] : null),
				'submit_original_goodmoral' => (!empty($_POST['submit_original_goodmoral']) ? $_POST['submit_original_goodmoral'] : null),
				'submit_original_medcert' => (!empty($_POST['submit_original_medcert']) ? $_POST['submit_original_medcert'] : null),
				'submit_twobytwo' => (!empty($_POST['submit_twobytwo']) ? $_POST['submit_twobytwo'] : null),
				'submit_photocopy_coc' => (!empty($_POST['submit_photocopy_coc']) ? $_POST['submit_photocopy_coc'] : null),
				// 'not_submitted_sarform' => (!empty($_POST['not_submitted_sarform']) ? $_POST['not_submitted_sarform'] : null),
				// 'not_submitted_f137' => (!empty($_POST['not_submitted_f137']) ? $_POST['not_submitted_f137'] : null),
				// 'not_submitted_grade10' => (!empty($_POST['not_submitted_grade10']) ? $_POST['not_submitted_grade10'] : null),
				// 'not_submitted_grade11' => (!empty($_POST['not_submitted_grade11']) ? $_POST['not_submitted_grade11'] : null),
				// 'not_submitted_grade12' => (!empty($_POST['not_submitted_grade12']) ? $_POST['not_submitted_grade12'] : null),
				// 'not_submitted_psa' => (!empty($_POST['not_submitted_psa']) ? $_POST['not_submitted_psa'] : null),
				// 'not_submitted_goodmoral' => (!empty($_POST['not_submitted_goodmoral']) ? $_POST['not_submitted_goodmoral'] : null),
				// 'not_submitted_medcert' => (!empty($_POST['not_submitted_medcert']) ? $_POST['not_submitted_medcert'] : null),
				
			];
			// die(print_r($data));
			$res = $getrefmodel->updateSendLackingDocuments(
				$id, 
				$_POST['email'], 
				$data, 
				$_POST['remarks']
			);
			
		}else{
			$data = [
				'sc_pup_remarks' => (!empty($_POST['sc_pup_remarks']) ? $_POST['sc_pup_remarks'] : null),
				's_one_photocopy_sarform' => (!empty($_POST['s_one_photocopy_sarform']) ? $_POST['s_one_photocopy_sarform'] : null),
				'submit_original_sarform' => (!empty($_POST['submit_original_sarform']) ? $_POST['submit_original_sarform'] : null),
				'no_dry_sealf137' => (!empty($_POST['no_dry_sealf137']) ? $_POST['no_dry_sealf137'] : null),
				'submit_original_f137' => (!empty($_POST['submit_original_f137']) ? $_POST['submit_original_f137'] : null),			
				'no_dry_sealgrade10' => (!empty($_POST['no_dry_sealgrade10']) ? $_POST['no_dry_sealgrade10'] : null),
				's_one_photocopy_grade10' => (!empty($_POST['s_one_photocopy_grade10']) ? $_POST['s_one_photocopy_grade10'] : null),
				'submit_original_grade10' => (!empty($_POST['submit_original_grade10']) ? $_POST['submit_original_grade10'] : null),		
				'no_dry_sealgrade11' => (!empty($_POST['no_dry_sealgrade11']) ? $_POST['no_dry_sealgrade11'] : null),
				's_one_photocopy_grade11' => (!empty($_POST['s_one_photocopy_grade11']) ? $_POST['s_one_photocopy_grade11'] : null),
				'submit_original_grade11' => (!empty($_POST['submit_original_grade11']) ? $_POST['submit_original_grade11'] : null),		
				'no_dry_sealgrade12' => (!empty($_POST['no_dry_sealgrade12']) ? $_POST['no_dry_sealgrade12'] : null),
				's_one_photocopy_grade12' => (!empty($_POST['s_one_photocopy_grade12']) ? $_POST['s_one_photocopy_grade12'] : null),
				'submit_original_grade12' => (!empty($_POST['submit_original_grade12']) ? $_POST['submit_original_grade12'] : null),
				's_one_photocopy_psa' => (!empty($_POST['s_one_photocopy_psa']) ? $_POST['s_one_photocopy_psa'] : null),
				'submit_original_psa' => (!empty($_POST['submit_original_psa']) ? $_POST['submit_original_psa'] : null),
				'no_dry_sealgoodmoral' => (!empty($_POST['no_dry_sealgoodmoral']) ? $_POST['no_dry_sealgoodmoral'] : null),
				's_one_photocopy_goodmoral' => (!empty($_POST['s_one_photocopy_goodmoral']) ? $_POST['s_one_photocopy_goodmoral'] : null),
				'submit_original_goodmoral' => (!empty($_POST['submit_original_goodmoral']) ? $_POST['submit_original_goodmoral'] : null),
				'submit_original_medcert' => (!empty($_POST['submit_original_medcert']) ? $_POST['submit_original_medcert'] : null),
				'submit_twobytwo' => (!empty($_POST['submit_twobytwo']) ? $_POST['submit_twobytwo'] : null),
				// 'not_submitted_sarform' => (!empty($_POST['not_submitted_sarform']) ? $_POST['not_submitted_sarform'] : null),
				// 'not_submitted_f137' => (!empty($_POST['not_submitted_f137']) ? $_POST['not_submitted_f137'] : null),
				// 'not_submitted_grade10' => (!empty($_POST['not_submitted_grade10']) ? $_POST['not_submitted_grade10'] : null),
				// 'not_submitted_grade11' => (!empty($_POST['not_submitted_grade11']) ? $_POST['not_submitted_grade11'] : null),
				// 'not_submitted_grade12' => (!empty($_POST['not_submitted_grade12']) ? $_POST['not_submitted_grade12'] : null),
				// 'not_submitted_psa' => (!empty($_POST['not_submitted_psa']) ? $_POST['not_submitted_psa'] : null),
				// 'not_submitted_goodmoral' => (!empty($_POST['not_submitted_goodmoral']) ? $_POST['not_submitted_goodmoral'] : null),
				// 'not_submitted_medcert' => (!empty($_POST['not_submitted_medcert']) ? $_POST['not_submitted_medcert'] : null),
				'submit_photocopy_coc' => (!empty($_POST['submit_photocopy_coc']) ? $_POST['submit_photocopy_coc'] : null),
			];
			$res = $getrefmodel->insertSendLackingDocuments(
				$id, 
				$_POST['email'], 	
				$data, 
				$_POST['remarks']
			);
			
		}
		if (
			$_POST['admission_status'] == 'incomplete' || 
			$_POST['admission_status'] =='complete' || 
			$_POST['admission_status'] =='rechecking'
		) {
			if ($res) {
				$this->session->setFlashData('success', 'Email Sent!');
				return redirect()->to(base_url('admission'));
			} else {
				$this->session->setFlashData('warning', 'Email not sent!');
				return redirect()->to(base_url('admission').'/notify/'.$id);
			}
		}else{
			$this->session->setFlashData('error', 'Please select adminssion status!');
	        return redirect()->to(base_url('admission'));
		}	
	}
	// public function sendLackingDocumentstoMail1($id)
	// {
	// 	$getrefmodel = new RefremarksModel;
	// 	$is_result = $getrefmodel->__getadmissionremarks($id);
	// 	if(!empty($is_result)){
	// 		$data = [
	// 			'sc_pup_remarks' => (!empty($_POST['sc_pup_remarks']) ? $_POST['sc_pup_remarks'] : null),
	// 			's_one_photocopy_sarform' => (!empty($_POST['s_one_photocopy_sarform']) ? $_POST['s_one_photocopy_sarform'] : null),
	// 			'submit_original_sarform' => (!empty($_POST['submit_original_sarform']) ? $_POST['submit_original_sarform'] : null),
	// 			'no_dry_sealf137' => (!empty($_POST['no_dry_sealf137']) ? $_POST['no_dry_sealf137'] : null),
	// 			'submit_original_f137' => (!empty($_POST['submit_original_f137']) ? $_POST['submit_original_f137'] : null),			
	// 			'no_dry_sealgrade10' => (!empty($_POST['no_dry_sealgrade10']) ? $_POST['no_dry_sealgrade10'] : null),
	// 			's_one_photocopy_grade10' => (!empty($_POST['s_one_photocopy_grade10']) ? $_POST['s_one_photocopy_grade10'] : null),
	// 			'submit_original_grade10' => (!empty($_POST['submit_original_grade10']) ? $_POST['submit_original_grade10'] : null),		
	// 			'no_dry_sealgrade11' => (!empty($_POST['no_dry_sealgrade11']) ? $_POST['no_dry_sealgrade11'] : null),
	// 			's_one_photocopy_grade11' => (!empty($_POST['s_one_photocopy_grade11']) ? $_POST['s_one_photocopy_grade11'] : null),
	// 			'submit_original_grade11' => (!empty($_POST['submit_original_grade11']) ? $_POST['submit_original_grade11'] : null),		
	// 			'no_dry_sealgrade12' => (!empty($_POST['no_dry_sealgrade12']) ? $_POST['no_dry_sealgrade12'] : null),
	// 			's_one_photocopy_grade12' => (!empty($_POST['s_one_photocopy_grade12']) ? $_POST['s_one_photocopy_grade12'] : null),
	// 			'submit_original_grade12' => (!empty($_POST['submit_original_grade12']) ? $_POST['submit_original_grade12'] : null),
	// 			's_one_photocopy_psa' => (!empty($_POST['s_one_photocopy_psa']) ? $_POST['s_one_photocopy_psa'] : null),
	// 			'submit_original_psa' => (!empty($_POST['submit_original_psa']) ? $_POST['submit_original_psa'] : null),
	// 			'no_dry_sealgoodmoral' => (!empty($_POST['no_dry_sealgoodmoral']) ? $_POST['no_dry_sealgoodmoral'] : null),
	// 			's_one_photocopy_goodmoral' => (!empty($_POST['s_one_photocopy_goodmoral']) ? $_POST['s_one_photocopy_goodmoral'] : null),
	// 			'submit_original_goodmoral' => (!empty($_POST['submit_original_goodmoral']) ? $_POST['submit_original_goodmoral'] : null),
	// 			'submit_original_medcert' => (!empty($_POST['submit_original_medcert']) ? $_POST['submit_original_medcert'] : null),
	// 			'submit_twobytwo' => (!empty($_POST['submit_twobytwo']) ? $_POST['submit_twobytwo'] : null),
	// 			// 'not_submitted_sarform' => (!empty($_POST['not_submitted_sarform']) ? $_POST['not_submitted_sarform'] : null),
	// 			// 'not_submitted_f137' => (!empty($_POST['not_submitted_f137']) ? $_POST['not_submitted_f137'] : null),
	// 			// 'not_submitted_grade10' => (!empty($_POST['not_submitted_grade10']) ? $_POST['not_submitted_grade10'] : null),
	// 			// 'not_submitted_grade11' => (!empty($_POST['not_submitted_grade11']) ? $_POST['not_submitted_grade11'] : null),
	// 			// 'not_submitted_grade12' => (!empty($_POST['not_submitted_grade12']) ? $_POST['not_submitted_grade12'] : null),
	// 			// 'not_submitted_psa' => (!empty($_POST['not_submitted_psa']) ? $_POST['not_submitted_psa'] : null),
	// 			// 'not_submitted_goodmoral' => (!empty($_POST['not_submitted_goodmoral']) ? $_POST['not_submitted_goodmoral'] : null),
	// 			// 'not_submitted_medcert' => (!empty($_POST['not_submitted_medcert']) ? $_POST['not_submitted_medcert'] : null),
	// 			'certicate_of_completion' => (!empty($_POST['certicate_of_completion']) ? $_POST['certicate_of_completion'] : null),
	// 		];
	// 		// die(print_r($data));
	// 		$res = $getrefmodel->updateSendLackingDocuments(
	// 			$id, 
	// 			$_POST['email'], 
	// 			$data, 
	// 			$_POST['remarks']
	// 		);
	// 	}else{
	// 		$data = [
	// 			'sc_pup_remarks' => (!empty($_POST['sc_pup_remarks']) ? $_POST['sc_pup_remarks'] : null),
	// 			's_one_photocopy_sarform' => (!empty($_POST['s_one_photocopy_sarform']) ? $_POST['s_one_photocopy_sarform'] : null),
	// 			'submit_original_sarform' => (!empty($_POST['submit_original_sarform']) ? $_POST['submit_original_sarform'] : null),
	// 			'no_dry_sealf137' => (!empty($_POST['no_dry_sealf137']) ? $_POST['no_dry_sealf137'] : null),
	// 			'submit_original_f137' => (!empty($_POST['submit_original_f137']) ? $_POST['submit_original_f137'] : null),			
	// 			'no_dry_sealgrade10' => (!empty($_POST['no_dry_sealgrade10']) ? $_POST['no_dry_sealgrade10'] : null),
	// 			's_one_photocopy_grade10' => (!empty($_POST['s_one_photocopy_grade10']) ? $_POST['s_one_photocopy_grade10'] : null),
	// 			'submit_original_grade10' => (!empty($_POST['submit_original_grade10']) ? $_POST['submit_original_grade10'] : null),		
	// 			'no_dry_sealgrade11' => (!empty($_POST['no_dry_sealgrade11']) ? $_POST['no_dry_sealgrade11'] : null),
	// 			's_one_photocopy_grade11' => (!empty($_POST['s_one_photocopy_grade11']) ? $_POST['s_one_photocopy_grade11'] : null),
	// 			'submit_original_grade11' => (!empty($_POST['submit_original_grade11']) ? $_POST['submit_original_grade11'] : null),		
	// 			'no_dry_sealgrade12' => (!empty($_POST['no_dry_sealgrade12']) ? $_POST['no_dry_sealgrade12'] : null),
	// 			's_one_photocopy_grade12' => (!empty($_POST['s_one_photocopy_grade12']) ? $_POST['s_one_photocopy_grade12'] : null),
	// 			'submit_original_grade12' => (!empty($_POST['submit_original_grade12']) ? $_POST['submit_original_grade12'] : null),
	// 			's_one_photocopy_psa' => (!empty($_POST['s_one_photocopy_psa']) ? $_POST['s_one_photocopy_psa'] : null),
	// 			'submit_original_psa' => (!empty($_POST['submit_original_psa']) ? $_POST['submit_original_psa'] : null),
	// 			'no_dry_sealgoodmoral' => (!empty($_POST['no_dry_sealgoodmoral']) ? $_POST['no_dry_sealgoodmoral'] : null),
	// 			's_one_photocopy_goodmoral' => (!empty($_POST['s_one_photocopy_goodmoral']) ? $_POST['s_one_photocopy_goodmoral'] : null),
	// 			'submit_original_goodmoral' => (!empty($_POST['submit_original_goodmoral']) ? $_POST['submit_original_goodmoral'] : null),
	// 			'submit_original_medcert' => (!empty($_POST['submit_original_medcert']) ? $_POST['submit_original_medcert'] : null),
	// 			'submit_twobytwo' => (!empty($_POST['submit_twobytwo']) ? $_POST['submit_twobytwo'] : null),
	// 			// 'not_submitted_sarform' => (!empty($_POST['not_submitted_sarform']) ? $_POST['not_submitted_sarform'] : null),
	// 			// 'not_submitted_f137' => (!empty($_POST['not_submitted_f137']) ? $_POST['not_submitted_f137'] : null),
	// 			// 'not_submitted_grade10' => (!empty($_POST['not_submitted_grade10']) ? $_POST['not_submitted_grade10'] : null),
	// 			// 'not_submitted_grade11' => (!empty($_POST['not_submitted_grade11']) ? $_POST['not_submitted_grade11'] : null),
	// 			// 'not_submitted_grade12' => (!empty($_POST['not_submitted_grade12']) ? $_POST['not_submitted_grade12'] : null),
	// 			// 'not_submitted_psa' => (!empty($_POST['not_submitted_psa']) ? $_POST['not_submitted_psa'] : null),
	// 			// 'not_submitted_goodmoral' => (!empty($_POST['not_submitted_goodmoral']) ? $_POST['not_submitted_goodmoral'] : null),
	// 			// 'not_submitted_medcert' => (!empty($_POST['not_submitted_medcert']) ? $_POST['not_submitted_medcert'] : null),
	// 			'certicate_of_completion' => (!empty($_POST['certicate_of_completion']) ? $_POST['certicate_of_completion'] : null),
	// 		];
	// 		$res = $getrefmodel->insertSendLackingDocuments(
	// 			$id, 
	// 			$_POST['email'], 
	// 			$data, 
	// 			$_POST['remarks']
	// 		);
	// 	}
	// 	if (
	// 		$_POST['admission_status'] == 'incomplete' || 
	// 		$_POST['admission_status'] =='complete' || 
	// 		$_POST['admission_status'] =='rechecking'
	// 	) {
	// 		if ($res) {
	// 			$this->session->setFlashData('success', 'Email Sent!');
	// 			return redirect()->to(base_url('admissionregistrar'));
	// 		} else {
	// 			$this->session->setFlashData('warning', 'Error');
	// 			return redirect()->to(base_url('admissionregistrar'));
	// 		}
	// 	}else{
	// 		$this->session->setFlashData('error', 'Please select adminssion status!');
	//         return redirect()->to(base_url('admission'));
	// 	}	
	// }
	public function showstudentIncompleteAdmission()
	{
		$getstudent = new StudentsModel;
		$getstudentadmissionmodel = new StudentadmissionModel;

		$this->data['count_incomplete'] = $getstudentadmissionmodel->__getIncompleteDocs();
		$this->data['students'] = $getstudent->__getStudentDetails();

		if ($this->isAjax()) {
				return view('admissionoffice/components/incompletestudentdocuments', $this->data);
			}
		echo view('admissionoffice/header', $this->data);
		echo view('admissionoffice/components/incompletestudentdocuments', $this->data);
		return view('admissionoffice/footer', $this->data);
	}
	public function showstudentIncompleteAdmission1()
	{
		$getstudent = new StudentsModel;
		$getstudentadmissionmodel = new StudentadmissionModel;

		$this->data['count_incomplete'] = $getstudentadmissionmodel->__getIncompleteDocs();
		$this->data['students'] = $getstudent->__getStudentDetails();

		if ($this->isAjax()) {
				return view('admissionoffice/components/incompletestudentdocuments1', $this->data);
			}
		echo view('admissionoffice/regheader', $this->data);
		echo view('admissionoffice/components/incompletestudentdocuments1', $this->data);
		return view('admissionoffice/footer', $this->data);
	}
	public function updateRecheckingDocuments($id)
	{
		$updateToRecheckingStatus = new StudentadmissionModel;

		$res = $updateToRecheckingStatus->__setUpdateToRechecking($id);
		
			
			if ($res == 'success') {
				$this->session->setFlashData('success', 'Rechecking is now in progress!');
	            return redirect()->to(base_url('studentadmission/view-admission-history/'.$id));
			}else{
				$this->session->setFlashData('error', 'Something went wrong!');
	            return redirect()->to(base_url('studentadmission/view-admission-history/'.$id));
			}
	}
	public function showstudentRecheckingAdmission()
	{
		$getstudent = new StudentsModel;
		$getstudentadmissionmodel = new StudentadmissionModel;

		$this->data['count_rechecking'] = $getstudentadmissionmodel->__getRecheckDocs();
		$this->data['students'] = $getstudent->__getStudentDetails();
		
		if ($this->isAjax()) {
				return view('admissionoffice/components/recheckingstudentdocuments', $this->data);
			}
		echo view('admissionoffice/header', $this->data);
		echo view('admissionoffice/components/recheckingstudentdocuments', $this->data);
		return view('admissionoffice/footer', $this->data);
	}
	public function showstudentRecheckingAdmission1()
	{
		$getstudent = new StudentsModel;
		$getstudentadmissionmodel = new StudentadmissionModel;

		$this->data['count_rechecking'] = $getstudentadmissionmodel->__getRecheckDocs();
		$this->data['students'] = $getstudent->__getStudentDetails();
		
		if ($this->isAjax()) {
				return view('admissionoffice/components/recheckingstudentdocuments1', $this->data);
			}
		echo view('admissionoffice/regheader', $this->data);
		echo view('admissionoffice/components/recheckingstudentdocuments1', $this->data);
		return view('admissionoffice/footer', $this->data);
	}

	public function upload_files($id)
	{
	
		if (isset($_POST['btnsavefiles'])) {
			{
				if (isset($_POST['btnsavefiles'])) {
					$sar_pupcct_results_files = $this->request->getFile('sar_pupcct_results_files');
					$f137_files = $this->request->getFile('f137_files');
					$f138_files = $this->request->getFile('f138_files');
					$g10_files = $this->request->getFile('g10_files'); 
					$g11_files = $this->request->getFile('g11_files');
					$g12_files = $this->request->getFile('g12_files');
					$psa_nso_files = $this->request->getFile('psa_nso_files');
					$good_moral_files = $this->request->getFile('good_moral_files');
					$medical_cert_files = $this->request->getFile('medical_cert_files');
					$picture_two_by_two_files = $this->request->getFile('picture_two_by_two_files');
		
					if ($sar_pupcct_results_files->isValid() && !$sar_pupcct_results_files->hasMoved()) {
						if ($f137_files->isValid() && !$f137_files->hasMoved()) {
							//if($f138_files->isValid() && !$f138_files->hasMoved()){
								if ($psa_nso_files->isValid() && !$psa_nso_files->hasMoved()) {
									if ($good_moral_files->isValid() && !$good_moral_files->hasMoved()) {
										if ($medical_cert_files->isValid() && !$medical_cert_files->hasMoved()) {
											if ($picture_two_by_two_files->isValid() && !$picture_two_by_two_files->hasMoved()) {
												
												$filepath_sar_pupcct_results_name = $sar_pupcct_results_files->getName();
												$sar_pupcct_results_files->move(ROOTPATH.'public/uploads/', $filepath_sar_pupcct_results_name);
		
												$filepath_f137_name = $f137_files->getName();
												$f137_files->move(ROOTPATH.'public/uploads/', $filepath_f137_name);
												
												/*
												$filepath_f138_name = $f138_files->getName();
												$f138_files->move(ROOTPATH.'public/uploads/', $filepath_f138_name);
												*/

												$filepath_g10card_name = $g10_files->getName(); 
												$g10_files->move(ROOTPATH. 'public/uploads/', $filepath_g10card_name);

												$filepath_g11card_name = $g11_files->getName(); 
												$g11_files->move(ROOTPATH. 'public/uploads/', $filepath_g11card_name);

												$filepath_g12card_name = $g12_files->getName(); 
												$g12_files->move(ROOTPATH. 'public/uploads/', $filepath_g12card_name);
		
												$filepath_psa_nso_name = $psa_nso_files->getName();
												$psa_nso_files->move(ROOTPATH.'public/uploads/', $filepath_psa_nso_name);
		
												$filepath_good_moral_name = $good_moral_files->getName();
												$good_moral_files->move(ROOTPATH.'public/uploads/', $filepath_good_moral_name);
		
												$filepath_medical_cert_name = $medical_cert_files->getName();
												$medical_cert_files->move(ROOTPATH.'public/uploads/', $filepath_medical_cert_name);
		
												$filepath_picture_two_by_two_name = $picture_two_by_two_files->getName();
												$picture_two_by_two_files->move(ROOTPATH.'public/uploads/', $filepath_picture_two_by_two_name);
		
		
												$getstudentadmissionfilesmodel = new StudentadmissionfilesModel;
		
												$is_upload = $getstudentadmissionfilesmodel->setInsertAdmissionFiles($id, $filepath_sar_pupcct_results_name, $filepath_f137_name, $filepath_g10card_name,
												$filepath_g11card_name,$filepath_g12card_name,   
												$filepath_psa_nso_name, $filepath_good_moral_name, $filepath_medical_cert_name, $filepath_picture_two_by_two_name);
												
												if ($is_upload == 'success') {
													$this->session->setFlashData('success_message', 'Successfully Inserted!');
													return redirect()->to(base_url('studentadmission/view-admission-history/'.$id));
												}elseif($is_upload == 'error'){
													
													$this->session->setFlashData('error_message', 'Please Contact School IT Support!');
												
													return redirect()->to(base_url('studentadmission/view-admission-history/'.$id));
												}

												
												
												
											}else{
												$this->session->setFlashData('error_message', 'Please Submit All Requirements Needed!');
												return redirect()->to(base_url('studentadmission/view-admission-history/'.$id));
											}
										}else{
											$this->session->setFlashData('error_message', 'Please Submit All Requirements Needed!');
											return redirect()->to(base_url('studentadmission/view-admission-history/'.$id));
										}
									}else{
										$this->session->setFlashData('error_message', 'Please Submit All Requirements Needed!');
										return redirect()->to(base_url('studentadmission/view-admission-history/'.$id));
									}
								}else{
									$this->session->setFlashData('error_message', 'Please Submit All Requirements Needed!');
									return redirect()->to(base_url('studentadmission/view-admission-history/'.$id));
								}								
							//}else{
							//	$this->session->setFlashData('error_message', 'Please Submit All Requirements Needed!');
							//	return redirect()->to(base_url('studentadmission/view-admission-history/'.$id));
							//}
						}else{
							$this->session->setFlashData('error_message', 'Please Submit All Requirements Needed!');
							return redirect()->to(base_url('studentadmission/view-admission-history/'.$id));
						}
					}else{
						$this->session->setFlashData('error_message', 'Please Submit All Requirements Needed!');
						return redirect()->to(base_url('studentadmission/view-admission-history/'.$id));
					}
				}
			}
		}
	}

	public function setForRetrievingFiles($id)
	{
		$getstudentadmissionmodel = new StudentadmissionModel;
		$getRefForRetrievedModel = new RefForRetrievedModel;

		if ($this->request->getMethod() == "post") {
			$data = [
				'f137ID' => $_POST['f137ID'],
				'f138ID' => $_POST['f138ID'],
				'cert_dry_sealID' => $_POST['cert_dry_sealID'],
				'cert_dry_sealID_twelve' => $_POST['cert_dry_sealID_twelve'],
			];
			
			$send_mail_label= [
				'f137ID' => ['Form 137', $_POST['f137ID']],
				'f138ID' => ['Grade 10 Card', $_POST['f138ID']],
				'cert_dry_sealID' => ['Grade 11 Card', $_POST['cert_dry_sealID']],
				'cert_dry_sealID_twelve' => ['Grade 12 Card', $_POST['cert_dry_sealID_twelve']],
			];

			$is_checklist = false;
			foreach ($data as $requirementsID) {
				if (!empty($requirementsID)) {
					$is_checklist = true;
				}
			}
			if($is_checklist == true && !empty($_POST['reasons'])){
				$is_selected_checklist_added = false;
				foreach ($data as $requirementsID) {
					if (!empty($requirementsID)) {
						$getRefForRetrievedData = $getRefForRetrievedModel->__getRetrievedAdmissionFilesByStudentId(
							$id, 
							$requirementsID
						)[0];
						if($getRefForRetrievedData['requirementsID'] == $requirementsID){
							$is_selected_checklist_added = false;
						}else{
							$getRefForRetrievedModel->__setInsertRetrievedAdmissionFiles(
								$id, 
								$requirementsID, 
								$_POST['reasons']
							);
							$send_email_data[] = ['requirementsID' =>$requirementsID];
							$is_selected_checklist_added = true;
						}
					}
				}
				// die(print_r($delete_student_admission_data));
				if($is_selected_checklist_added == true){
					foreach ($send_mail_label as $label) {
						foreach ($send_email_data as $email_data) {
							if($label[1] == $email_data['requirementsID']){
								$email_added_list[] = ['label'=> $label[0]];
							}
						}
					}
					if(!empty($data)){
						$getstudentadmissionmodel->updateAdmissionStudentsForRetrieveFiles($id, $data);
					}
					$user_info = $this->studentModel->getStudentDetailsByUserId($id)[0];
					$student = new Students();
					if($student->sendRetrieveStudentDocuments(
						$user_info['firstname'], 
						$user_info['middlename'], 
						$user_info['lastname'], 
						$user_info['email'], 
						$email_added_list,
						$_POST['reasons']
					)){
						$this->session->setFlashData('success', 'Successfully Inserted!');
						return redirect()->to(base_url('admission/retrieved-files'));
					}else{
						$this->session->setFlashData('warning', 'Email not sent!');
						return redirect()->to(base_url('admission/retrieved-files'));
					}
				}else{
					$this->session->setFlashData('success', 'Successfully Updated!');
					return redirect()->to(base_url('admission/retrieved-files'));
				}
			}else{
				$this->session->setFlashData('error', 'Please select atleast one document to continue!');
				return redirect()->to(base_url('admission'));
			}
		}
	}
	public function showstudentRetrievedFiles()
	{
		$getRetrievedRecord = new RefForRetrievedModel;
		

		$this->data['retrieved_record'] = $getRetrievedRecord->__getRetrievedRecord();
		
		// var_dump($this->data['retrieved_record']);
		if ($this->isAjax()) {
				return view('admissionoffice/components/retrievedstudentdocuments', $this->data);
			}
		echo view('admissionoffice/header', $this->data);
		echo view('admissionoffice/components/retrievedstudentdocuments', $this->data);
		return view('admissionoffice/footer', $this->data);
	}
	public function showstudentRetrievedFiles1()
	{
		$getRetrievedRecord = new RefForRetrievedModel;
		

		$this->data['retrieved_record'] = $getRetrievedRecord->__getRetrievedRecord();
		
		// var_dump($this->data['retrieved_record']);
		if ($this->isAjax()) {
				return view('admissionoffice/components/retrievedstudentdocuments1', $this->data);
			}
		echo view('admissionoffice/regheader', $this->data);
		echo view('admissionoffice/components/retrievedstudentdocuments1', $this->data);
		return view('admissionoffice/footer', $this->data);
	}
	public function showStudentFilesImages($id)
	{
		$getStudentFileImages = new StudentadmissionfilesModel;
		$getstudent = new StudentsModel;
		$model = new AdmissionDocumentStatusModel(); 
		$getstudent = new StudentsModel;

		$this->data['documentstatus'] =   $model->__getStudentAdmissionStatus($id);
// 		die(print_r($this->data['documentstatus']));
		$this->data['image_file_record'] = $getStudentFileImages->__getStudentImageFiles($id);
		$this->data['student'] = $getstudent->__getStudentWhereEqualToUserID($id);
		if ($this->isAjax()) {
				return view('admissionoffice/components/student_admission_files_gallery', $this->data);
		}
		echo view('admissionoffice/header', $this->data);
		echo view('admissionoffice/components/student_admission_files_gallery', $this->data);
		return view('admissionoffice/footer', $this->data);
	}

	
}