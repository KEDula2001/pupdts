<?php namespace Modules\SystemSettings\Controllers;

use App\Controllers\BaseController;
use Modules\Dashboard\Models as Dashboard;

class Dashboards extends BaseController {


  public function index(){
    $data['request_count'] = count($this->requestModel->getDetails(['requests.status' => 'p']));
    $data['detail_count'] = count($this->requestDetailModel->getDetails(['request_details.status' => 'p', 'requests.status' => 'o']));
    $data['claim_count'] = count($this->requestDetailModel->getDetails(['request_details.status' => 'r', 'requests.status' => 'o']));
    $data['completed_count'] = count($this->requestDetailModel->getDetails(['request_details.status' => 'c', 'requests.status' => 'o']));
    $data['view'] = 'Modules\SystemSettings\Views\dashboards\index';
    return view('template/index', $data);
  }

}
