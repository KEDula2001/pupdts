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

class AdmissionController extends BaseController
{
	 protected $helpers = ['form', 'url'];


	public function UploadStudentDocuments($id){ 

		
		$getStudentAdFileModel = new StudentadmissionfilesModel();

		if($this->request->getMethod() == 'post'){

			//die(print_r($_FILES['sar_pupcct_results_files']['name']));
			//files variable goes here
			//sample $file = $this->request->getFile('photo');

			$sar_pupcct_results_files = $this->request->getFile('sar_pupcct_results_files');
			//die($sar_pupcct_results_files);
			$f137_files = $this->request->getFile('f137_files'); 
			$g10_files = $this->request->getFile('g10_files'); 
			$g11_files = $this->request->getFile('g11_files'); 
			$g12_files = $this->request->getFile('g12_files');
			$psa_nso_files = $this->request->getFile('psa_nso_files'); 
			$good_moral_files = $this->request->getFile('good_moral_files');
			$medical_cert_files = $this->request->getFile('medical_cert_files');
			$picture_two_by_two_files = $this->request->getFile('picture_two_by_two_files');

				
				if($sar_pupcct_results_files->isValid()){
					$filepath_sar_pupcct_results_name = $sar_pupcct_results_files->getName();
					$sar_pupcct_results_files->move(ROOTPATH.'public/uploads/', $filepath_sar_pupcct_results_name);
					
				}
				if($f137_files->isValid()){
					$filepath_f137_name = $f137_files->getName();
					$f137_files->move(ROOTPATH.'public/uploads/', $filepath_f137_name);
		
				}
				if($g10_files->isValid()){
					$filepath_g10_name = $g10_files->getName();
					$g10_files->move(ROOTPATH.'public/uploads/', $filepath_g10_name);
				}
				if($g11_files->isValid()){
					$filepath_g11_name = $g11_files->getName();
					$g11_files->move(ROOTPATH.'public/uploads/', $filepath_g11_name);
				}
				if($g12_files->isValid()){
					$filepath_g12_name = $g12_files->getName();
					$g12_files->move(ROOTPATH.'public/uploads/', $filepath_g12_name);
				}
				if($psa_nso_files->isValid()){
					$filepath_psa_nso_name = $psa_nso_files->getName(); 
					$psa_nso_files->move(ROOTPATH. 'public/uploads/', $filepath_psa_nso_name);
				}
				if($good_moral_files->isValid()){
					$filepath_good_moral_name = $good_moral_files->getName(); 
					$good_moral_files->move(ROOTPATH. 'public/uploads/', $filepath_good_moral_name);
				}
				if($medical_cert_files->isValid()){
					$filepath_medicalcert_name = $medical_cert_files->getName(); 
					$medical_cert_files->move(ROOTPATH. 'public/uploads/', $filepath_medicalcert_name);
				}
				if($picture_two_by_two_files->isValid()){
					$filepath_twobytwo_name = $picture_two_by_two_files->getName(); 
					$picture_two_by_two_files->move(ROOTPATH. 'public/uploads/', $filepath_twobytwo_name);
				}
											
			$data = [
				'studID' => $id,
				'sar_pupcct_results_files' => $filepath_sar_pupcct_results_name,
				'f137_files' => $filepath_f137_name, 
				'g10_files' => $filepath_g10_name, 
				'g11_files' => $filepath_g11_name, 
				'g12_files' => $filepath_g12_name, 
				'psa_nso_files' => $filepath_psa_nso_name, 
				'good_moral_files' => $filepath_good_moral_name, 
				'medical_cert_files' => $filepath_medicalcert_name, 
				'picture_two_by_two_files' => $filepath_twobytwo_name
			];
			
			if ($getStudentAdFileModel->setInsertAdmissionFiles($data)){
				$this->session->setFlashData('success_message', 'Successfully Inserted!');
				return redirect()->to(base_url('studentadmission/view-admission-history/'.$id));
			}elseif($is_upload == 'error'){
				
				$this->session->setFlashData('error_message', 'Please Contact School IT Support!');
			
				return redirect()->to(base_url('studentadmission/view-admission-history/'.$id));
			}
		}
	}

	 public function StudentAdDocumentStatus($id){
		
		$model = new AdmissionDocumentStatusModel(); 
		$getStudentFileImages = new StudentadmissionfilesModel;
		$getstudent = new StudentsModel;

		helper(['form']);
		if ($this->request->getMethod() == 'post'){
			if(!$this->validate('admissionStatus')){
				$this->data['errors'] = $this->validation->getErrors();
                $this->data['value'] = $_POST;
				// die(print_r($_POST));
			} else {
				$admissionStatusData = [
					'sar_pupcet_result_status' => $_POST['sar_pupcet_result_status'],
					'f137_status' => $_POST['f137_status'],
					'g10_status' => $_POST['g10_status'],
					'g11_status' => $_POST['g11_status'],
					'g12_status' => $_POST['g12_status'],
					'psa_nso_status' => $_POST['psa_nso_status'],
					'goodmoral_status' => $_POST['goodmoral_status'],
					'medical_cert_status' => $_POST['medical_cert_status'],
					'pictwobytwo_status' => $_POST['pictwobytwo_status'],
				];
				if($model->__updateAdmissionDocument($id, $admissionStatusData)){
					echo '<script>alert("Successfully inserted")</script>';
					return redirect()->to(base_url('admission'));
				}else{
					die('error');
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
 
	Liway Maliksi
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
 
	Liway Maliksi
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
 
	Liway Maliksi
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
 
	Liway Maliksi
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
 
	Liway Maliksi
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
		$this->data['students'] = $getstudent->__getStudentDetails();
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
            'student_number' => 'required|alpha_numeric_punct',
			'firstname' => 'required',
			'lastname' => 'required',
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
						'email' => $_POST['email'],
						'course_id' => $_POST['course_id']
					];

			$res = $this->studentModel->insertStudent($data);

			if ($res) {
				$this->session->setFlashData('success_message', 'Successfully Added Student');
            	return redirect()->to(base_url('admission'));
			}else{
				$this->session->setFlashData('error_message', 'Error');
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
				'trans_rec'=> (!empty($_POST['trans_rec']) ? $_POST['trans_rec'] : 0)
			];
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
				'trans_rec'=> (!empty($_POST['trans_rec']) ? $_POST['trans_rec'] : 0)
			];
			$res = $insertstudentadmission->insertAdmissionStudents($id, $data, (!empty($_POST['admission_status']) ? $_POST['admission_status'] : ""));
		}

		if ($res) {
			$this->session->setFlashData('success', 'Successfully Inserted!');
			if ($res['admission_status'] == 'complete') {
				return redirect()->to(base_url('admission/complete'));
			}elseif ($res['admission_status'] == 'incomplete') {
				return redirect()->to(base_url('admission/notify/'.$res['userID']));
			}
		} else {
			$this->session->setFlashData('error', 'Error encountered!');
			return redirect()->to(base_url('admission'));
		}
		
		if ($this->isAjax()) {
			return view('admissionoffice/admissiondashboard', $this->data);
		}
		echo view('admissionoffice/header', $this->data);
		echo view('admissionoffice/admissiondashboard', $this->data);
		return view('admissionoffice/footer', $this->data);
	}
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
	public function sendLackingDocumentstoMail($id)
	{
		$userID = $id;
		$email = $_POST['email'];
		$admission_status = $_POST['admission_status'];
		
		if (!empty($_POST['no_dry_seal'])) {
			$no_dry_seal = $_POST['no_dry_seal'];}else{$no_dry_seal = NUll;}	
		if (!empty($_POST['sc_true_copy'])) {
			$sc_true_copy = $_POST['sc_true_copy'];}else{$sc_true_copy = NUll;}
		if (!empty($_POST['sc_pup_remarks'])) {
			$sc_pup_remarks = $_POST['sc_pup_remarks'];}else{$sc_pup_remarks = NUll;}	
		if (!empty($_POST['s_one_photocopy'])) {
			$s_one_photocopy = $_POST['s_one_photocopy'];}else{$s_one_photocopy = NUll;}
		if (!empty($_POST['submit_original'])) {
			$submit_original = $_POST['submit_original'];}else{$submit_original = NUll;}
		if (!empty($_POST['not_submit'])) {
			$not_submit = $_POST['not_submit'];}else{$not_submit = NUll;}
		if (!empty($_POST['remarks'])) {
			$remarks = $_POST['remarks'];}else{$remarks = NUll;}

		// var_dump($userID.', '.$email.', '.$admission_status.', '.$no_dry_seal.', '.$sc_true_copy.', '.$sc_pup_remarks.', '.$s_one_photocopy.', '.$submit_original.', '.$not_submit.', '.$remarks);	
		if ($admission_status == 'incomplete' && $admission_status =='complete' && $admission_status =='rechecking') {			
			$getrefmodel = new RefremarksModel;
			$res = $getrefmodel->insertSendLackingDocuments($email, $userID, $no_dry_seal, $sc_true_copy, $sc_pup_remarks, $s_one_photocopy, $submit_original, $not_submit, $remarks);

	 			if ($res) {
					$this->session->setFlashData('success', 'Successfully Inserted!');
	            	return redirect()->to(base_url('admission'));
				}else{
					$this->session->setFlashData('warning', 'Error');
	            	return redirect()->to(base_url('admission'));
				}
		}else{
			$this->session->setFlashData('error_message', 'Error');
	        return redirect()->to(base_url('admission'));
		}	
	}
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
	public function updateRecheckingDocuments($id)
	{
		$updateToRecheckingStatus = new StudentadmissionModel;

		$res = $updateToRecheckingStatus->__setUpdateToRechecking($id);
		
			var_dump($res);
			if ($res == 'success') {
	            return redirect()->to(base_url('studentadmission/view-admission-history/'.$id));
			}else{
				$this->session->setFlashData('error_message', 'Error!');
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
		if (isset($_POST['btnretrieved'])) {
			$data = [
				'sar_pupcct_resultID' => $_POST['sar_pupcct_resultID'],
				'f137ID' => $_POST['f137ID'],
				'f138ID' => $_POST['f138ID'],
				'cert_dry_sealID' => $_POST['cert_dry_sealID'],
				'cert_dry_sealID_twelve' => $_POST['cert_dry_sealID_twelve'],
				'psa_nsoID' => $_POST['psa_nsoID'],
				'good_moralID' => $_POST['good_moralID'],
				'medical_certID' => $_POST['medical_certID'],
				'picture_two_by_twoID' => $_POST['picture_two_by_twoID']
			];

			$getRefForRetrievedModel = new RefForRetrievedModel;

			$reasons = $_POST['reasons'];
				foreach ($data as $key => $value) {
					if (!empty($value)) {
						$requirementsID = $value;
						$getRefForRetrievedModel->__setInsertRetrievedAdmissionFiles($id, $requirementsID, $reasons);
					}
				}

			$this->session->setFlashData('success_message', 'Successfully Inserted!');
			return redirect()->to(base_url('admission/retrieved-files'));
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
	public function showStudentFilesImages($id)
	{
		$getStudentFileImages = new StudentadmissionfilesModel;
		$getstudent = new StudentsModel;

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