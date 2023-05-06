<?php

namespace App\Controllers\Admin;


use App\Libraries\Pdf;
use App\Libraries\Fpdi;
use App\Controllers\BaseController;

class Generalreport extends BaseController
{

	public function index()
	{
        $pdf = new Pdf('L', PDF_UNIT, PDF_PAGE_FORMAT, true, 'UTF-8', false);

        // set document information
        $pdf->SetCreator(PDF_CREATOR);
        $pdf->SetAuthor('PUPT Taguig ODRS');
        $pdf->SetTitle('Dashboard Report');
        $pdf->SetSubject('Dashboard Report');
        $pdf->SetKeywords('Report, ODRS, Document');

        // set default header data
        $pdf->SetHeaderData('header.png', '130', '', '');

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

        $pdf->setPrintHeader(false);
        $pdf->setPrintFooter(false);
        $pdf->SetAutoPageBreak(false);
        
        // add a page
        $pdf->AddPage('L');
        
        $pdf->SetX(20);
        $pdf->SetY(50);
        
        $image_file = K_PATH_IMAGES . 'landscape-header.jpg';
        $imageY = $pdf->GetPageHeight() - PDF_MARGIN_TOP;
        $pdf->Image($image_file, 0, 0, $pdf->GetPageWidth(), 50);

        $pdf->ln(3);
        $pdf->writeHTML('<hr style="margin-bottom: 7px; ">', true, 1);

        $pdf->SetFont('times', '', 12);

        // -----------------------------------------------------------------------------
        $data['request_count'] = count($this->requestModel->getDetails(['requests.status' => 'p']));
        $data['detail_count'] = count($this->requestDetailModel->getDetails(['request_details.status' => 'p', 'requests.status' => 'o']));
        $data['claim_count'] = count($this->requestDetailModel->getDetails(['request_details.status' => 'r', 'requests.status' => 'o']));
        $data['completed_count'] = count($this->requestDetailModel->getDetails(['request_details.status' => 'c', 'requests.status' => 'o']));
        $reportTable = view('Modules\DocumentRequest\Views\requests\dashboardreport',$data);

        $pdf->writeHTML($reportTable, true, false, false, false, '');
/**
        $pdf->Ln(15);
        $pdf->SetFont('times', '', 12);
        $pdf->Cell(18, 5, 'Prepared by:                                                                                                             Noted by:');
        $pdf->Ln(15);
        $pdf->SetFont('times', 'B', 12);
        $pdf->Cell(18, 5, 'MHEL P. GARCIA                                                                                                DR. MARISSA B. FERRER');
        $pdf->Ln(6);
        $pdf->SetFont('times', '', 12);
        $pdf->Cell(18, 5, 'Branch Registrar/Head of Registration Office                                                         Branch Director');
**/
        $pdf->SetX(100);
        $pdf->SetY(150);
        
        $image_file = K_PATH_IMAGES . 'landscape-footer.jpg';
        $imageY = $pdf->GetPageHeight() - PDF_MARGIN_BOTTOM - 45;
        $pdf->Image($image_file, 20, $pdf->GetPageHeight()-75, $pdf->GetPageWidth()-60, 75);
        
        // $image_file, 20          adjusts left
        // GetPageHeight()-75       adjusts bottom

        
        
        //Close and output PDF document
        $pdf->Output('report.pdf', 'I');

        //============================================================+
        // END OF FILE
        //============================================================+
        die();
    }

}
