<?php namespace App\Libraries;

require_once dirname(__file__). '/autoload.php';
require_once dirname(__file__). '/Fpdi.php';

class Pdf extends \setasign\Fpdi\Tcpdf\Fpdi{

//   public function addPageNumber() {
//     // Get the total number of pages
//     $total_pages = $this->getNumPages();
  
//     // Set the font
//     $this->SetFont('helvetica', '', 8);
  
//     // Set the text alignment to right
//     $this->Cell(0, 10, '', 0, 1, 'R');
  
//     // Position the text cursor at the bottom-right corner of the page
//     $this->SetXY(200, 150);
  
//     // Add the page number
//     $this->Cell(0, 10, "Page {$this->getAliasNumPage()}", 0, 0, 'C');
//   }


  public function Footer() {
      // Position at 15 mm from bottom
       //$this->SetY(-10);
      // Set font
      // Page number
      $this->ln(-9);
       //$this->writeHTML('<hr style="margin-bottom: 7px; ">', true, 1);
       $this->ln(-3);
      
      // $this->MultiCell('', '', 'Gen. Santos Avenue, Lower Bicutan, Taguig City 1632; (Direct Line) 8 837-5858 to 60; (Telefax) 8 837-5859 ', 0, 'L', 0, 0, '', '', true, 0, false, true, 40, 'T');

      // $this->ln(4);

      // $this->writeHTML('<p style="text-align:left">Website: <a href="#">www.pup.edu.ph</a> | Email: <a href="#">taguig@pup.edu.ph</a> | Email: <a href="#">taguig.registrar@pup.edu.ph</a>', 0, 0, true, 1);

      // $this->ln(4);

      // $this->SetFont('arial', '', 11);

      // $this->MultiCell('', '', '“THE COUNTRY’S 1ST POLYTECHNICU”', 0, 'L', 0, 0, '', '', true, 0, false, true, 40, 'T', );
     
      // $this->SetX(50);
      // $this->SetY(50);
       //$image_file = K_PATH_IMAGES. 'footer.jpg';
       //$this->Image($image_file, 0, 200,'JPG','C');
       //$this->Image($image_file, false, false, 190, '');
      //$this->Rect(0, $this->getPageHeight() - 10, $this->getPageWidth(), 30, 'F', "",  array(30, 127, 184)); 
     // $this->addPageNumber();
     
        $image_file = K_PATH_IMAGES . 'main-footer.jpg';
        $imageY = $this->GetPageHeight() - PDF_MARGIN_BOTTOM - 15;
        $this->Image($image_file, 10, $this->GetPageHeight()-35, $this->GetPageWidth()-20, 30);
        
        // $this->setY(-40);
        // $this->SetFont('times', 'i', 11);
        // $this->Cell(0, 10, 'Page '.$this->getAliasNumPage().' of '.$this->getAliasNbPages(), 0, 0, 'C');

  }
}