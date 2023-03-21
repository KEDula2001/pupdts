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
        $pdf->SetTitle('Report');
        $pdf->SetSubject('Documet Request Report');
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

        // add a page
        $pdf->AddPage();


        $pdf->SetFont('helvetica', '', 10);

        // -----------------------------------------------------------------------------
        $data['request_count'] = count($this->requestModel->getDetails(['requests.status' => 'p']));
        $data['detail_count'] = count($this->requestDetailModel->getDetails(['request_details.status' => 'p', 'requests.status' => 'o']));
        $data['claim_count'] = count($this->requestDetailModel->getDetails(['request_details.status' => 'r', 'requests.status' => 'o']));
        $data['completed_count'] = count($this->requestDetailModel->getDetails(['request_details.status' => 'c', 'requests.status' => 'o']));
        $reportTable = view('Modules\DocumentRequest\Views\requests\dashboardreport',$data);

        $pdf->writeHTML($reportTable, true, false, false, false, '');

        $pdf->SetFont('helvetica', '', 12);


    // Fit text on cell by reducing font size
        $pdf->MultiCell(89, 40, 'Prepared By:

   Mhel Garcia
    Branch Registrar', 0, 'C', 0, 0, '', '', true, 0, false, true, 40, 'M' ,true);
        $pdf->MultiCell(89, 40, '', 0, 'J', 0, 0, '', '', true, 0, false, true, 40, 'M');
        $pdf->MultiCell(89, 40, 'Noted By:

    Dr. Marissa B. Ferrer
    Branch Director', 0, 'C', 0, 1, '', '', true, 0, false, true, 40, 'M');


        //Close and output PDF document
        $pdf->Output('report.pdf', 'I');

        //============================================================+
        // END OF FILE
        //============================================================+
        die();
    }

}
