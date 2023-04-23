<?php namespace Modules\SystemSettings\Controllers;

use App\Controllers\BaseController;
use Modules\Dashboard\Models as Dashboard;

class Dashboards extends BaseController {


  public function index(){
    if($_SESSION['role'] == "hapoffice" || $_SESSION['role'] == "Admission"){
        $data['request_count'] = count($this->requestDetailModel->getDetails(['requests.status' => 'p', 'request_details.document_id' => 6]));
        $data['detail_count'] = count($this->requestDetailModel->getDetails(['request_details.status' => 'p', 'requests.status' => 'o', 'request_details.document_id' => 27]));
        $data['claim_count'] = count($this->requestDetailModel->getDetails(['request_details.status' => 'c', 'requests.status' => 'o', 'request_details.document_id' => 27]));
        $data['completed_count'] = count($this->requestDetailModel->getDetails(['request_details.status' => 'c', 'requests.status' => 'o', 'request_details.document_id' => 6]));
        $data['view'] = 'Modules\SystemSettings\Views\dashboards\index';
    }
    else if($_SESSION['role'] == "Admin"){
        $data['request_count'] = count($this->requestModel->getDetailsForApprovedClearances(['requests.status' => 'p'], null, 0, 1));
        $data['detail_count'] = count($this->requestDetailModel->getDetails(['request_details.status' => 'p', 'requests.status' => 'o', 'request_details.document_id' => 6]));
        $data['claim_count'] = count($this->requestDetailModel->getDetails(['request_details.status' => 'r', 'requests.status' => 'o', 'request_details.document_id' => 6]));
        $data['completed_count'] = count($this->requestDetailModel->getDetails(['request_details.status' => 'c', 'requests.status' => 'o', 'request_details.document_id' => 6]));
        $data['view'] = 'Modules\SystemSettings\Views\dashboards\index';
    }
    else{
        
        $data['request_count'] = count($this->requestModel->getDetails(['requests.status' => 'p']));
        $data['detail_count'] = count($this->requestDetailModel->getDetails(['request_details.status' => 'p', 'requests.status' => 'o']));
        $data['claim_count'] = count($this->requestDetailModel->getDetails(['request_details.status' => 'r', 'requests.status' => 'o']));
        $data['completed_count'] = count($this->requestDetailModel->getDetails(['request_details.status' => 'c', 'requests.status' => 'o']));
        $data['view'] = 'Modules\SystemSettings\Views\dashboards\index';
    }
    return view('template/index', $data);
  }

}
