<?php

namespace Modules\DocumentRequest\Models;
use App\Models\BaseModel;

/**
 *
 */
class RequestDetailsModel extends BaseModel
{

  protected $table = 'request_details';

  protected $allowedFields = [
    'id', 
    'request_id',
    'free', 
    'document_id', 
    'remark', 
    'status', 
    'quantity' , 
    'page',
    'library', 
    'laboratory', 
    'rotc', 
    'accounting_office', 
    'internal_audit', 
    'legal_office', 
    'printed_at', 
    'received_at'
  ];

  function __construct(){
    parent::__construct();
  }

  public function getDetails($conditions = [], $role_status = null, $id = null){

    $this->select('
      request_details.*, 
      requests.slug,
      documents.price,
      requests.created_at as requested_at, 
      requests.confirmed_at,
      requests.reason, 
      documents.document,
      documents.per_page_payment,
      documents.template, 
      documents.price, 
      students.firstname, 
      students.lastname, 
      students.middlename,
      students.address,
      CONCAT(students.firstname, students.lastname) as fullname, 
      students.suffix, 
      students.student_number, 
      students.gender,
      courses.course, 
      courses.abbreviation, 
      users.email,
      requests.request_code,
      students.status as student_status,
      requests.approved_at
    ');
    $this->join('requests', 'request_id = requests.id');
    $this->join('documents', 'document_id = documents.id');
    $this->join('students', 'requests.student_id = students.id');
    $this->join('users', 'users.id = students.user_id');
    $this->join('courses', 'students.course_id = courses.id');
    foreach ($conditions as $condition => $value) {
      $this->where($condition , $value);
    }
    
    if ($role_status != null){
      $this->whereNotIn('request_details.document_id', [6, 26, 27]);
    }
    
    if ($id != null) {
      $this->where('id', $id);
    }
    
    return $this->findAll();
  }
  
  public function getDetailsForSSO($conditions = []){

    $this->select('
      request_details.*, 
      requests.slug,
      requests.created_at as requested_at, 
      requests.confirmed_at,
      requests.reason, 
      documents.document,
      documents.per_page_payment,
      documents.template, 
      students.firstname, 
      students.lastname, 
      students.middlename,
      CONCAT(students.firstname, students.lastname) as fullname, 
      students.suffix, 
      courses.course, 
      courses.abbreviation,
      students.student_number,
      users.email,
    ');
    $this->join('requests', 'request_details.request_id = requests.id');
    $this->join('documents', 'request_details.document_id = documents.id');
    $this->join('students', 'requests.student_id = students.id');
    $this->join('users', 'users.id = students.user_id');
    $this->join('courses', 'students.course_id = courses.id');
    foreach ($conditions as $condition => $value) {
      $this->where($condition , $value);
    }
    
    return $this->findAll();
  }

 public function getDetailsReport($conditions = [], $id = null){

    $this->select('
      request_details.*, 
      requests.slug,
      documents.price,
      requests.created_at as requested_at, 
      requests.confirmed_at,
      requests.reason, 
      documents.document,
      documents.per_page_payment,
      documents.template, 
      documents.price, 
      students.firstname, 
      students.lastname, 
      students.middlename, 
      CONCAT(students.firstname, students.lastname) as fullname, 
      students.suffix, 
      students.student_number, 
      students.gender,
      students.level,
      students.birthdate, 
      students.address, 
      students.contact, 
      students.admitted_year_sy, 
      students.semester, 
      students.elem_school_address, 
      students.elem_year_graduated, 
      students.high_school_address, 
      students.high_year_graduated, 
      students.college_school_address, 
      students.year_graduated, 
      courses.course, 
      courses.abbreviation, 
      users.email
    ');
    $this->join('requests', 'request_id = requests.id');
    $this->join('documents', 'document_id = documents.id');
    $this->join('students', 'requests.student_id = students.id');
    $this->join('users', 'users.id = students.user_id');
    $this->join('courses', 'students.course_id = courses.id');
    foreach ($conditions as $condition => $value) {
      $this->where($condition , $value);
    }
    if ($id != null)
      $this->where('id', $id);
    return $this->findAll();
  }
  
  public function getDetailsReportForRegistrar($conditions = [], $id = null){

    $this->select('
      request_details.*, 
      requests.slug,
      documents.price,
      requests.created_at as requested_at, 
      requests.confirmed_at,
      requests.reason, 
      documents.document,
      documents.per_page_payment,
      documents.template, 
      documents.price, 
      students.firstname, 
      students.lastname, 
      students.middlename, 
      CONCAT(students.firstname, students.lastname) as fullname, 
      students.suffix, 
      students.student_number, 
      students.gender,
      students.level,
      students.birthdate, 
      students.address, 
      students.contact, 
      students.admitted_year_sy, 
      students.semester, 
      students.elem_school_address, 
      students.elem_year_graduated, 
      students.high_school_address, 
      students.high_year_graduated, 
      students.college_school_address, 
      students.year_graduated, 
      courses.course, 
      courses.abbreviation, 
      users.email
    ');
    $this->join('requests', 'request_id = requests.id');
    $this->join('documents', 'document_id = documents.id');
    $this->join('students', 'requests.student_id = students.id');
    $this->join('users', 'users.id = students.user_id');
    $this->join('courses', 'students.course_id = courses.id');
    foreach ($conditions as $condition => $value) {
      $this->where($condition , $value);
    }
    if ($id != null)
      $this->where('id', $id);
    return $this->findAll();
  }

  public function getRequestDetailList($request_id = null){
    $this->select('library, laboratory, rotc, accounting_office, internal_audit');
    $this->where('request_id' , $request_id);
    return $this->findAll();
  }

  public function approveClearance($id, $data)
  {
    return $this->update($id, $data);
  }

  public function printRequest($id, $data)
  {
    $this->transStart();

      $this->update($id, $data);

    $this->transComplete();

    return $this->transStatus();
  }

  public function claimRequest($data){
    $this->transStart();
      foreach($data as $key){
        $this->update($key, ['status' => 'c', 'received_at' => date("Y-m-d H:i:s")]);
      }

    $this->transComplete();

    return $this->transStatus();
  }
public function getSummary($type, $date, $document){
  // die($type." : ".$date." : ".$document);
  $this->select('COUNT(request_details.id) as count, documents.process_day, requests.confirmed_at, request_details.printed_at');
  $this->join('requests', 'request_id = requests.id');
  $this->join('documents', 'document_id = documents.id');
  $this->join('students', 'requests.student_id = students.id');
  $this->join('courses', 'students.course_id = courses.id');
  
  $q1 = [1, 3];
  $q2 = [4, 6];
  $q3 = [7, 9];
  $q4 = [10, 12];
  
  if($type == 'q1'){
    $this->where('month(request_details.printed_at) >=', $q1[0]);
    $this->where('month(request_details.printed_at) <=', $q1[1]);
    $slice = explode('-', $date);
    $this->where('year(request_details.printed_at)', $slice[0]);
  } else if ($type == 'q2') {
    $this->where('month(request_details.printed_at) >=', $q2[0]);
    $this->where('month(request_details.printed_at) <=', $q2[1]);
    $slice = explode('-', $date);
    $this->where('year(request_details.printed_at)', $slice[0]);
  } else if ($type == 'q3') {
    $this->where('month(request_details.printed_at) >=', $q3[0]);
    $this->where('month(request_details.printed_at) <=', $q3[1]);
    $slice = explode('-', $date);
    $this->where('year(request_details.printed_at)', $slice[0]);
  } else if ($type == 'q4') {
    $this->where('month(request_details.printed_at) >=', $q4[0]);
    $this->where('month(request_details.printed_at) <=', $q4[1]);
    $slice = explode('-', $date);
    $this->where('year(request_details.printed_at)', $slice[0]);
  } else if ($type == 'monthly') {
    $slice = explode('-', $date);
    $this->where('month(request_details.printed_at)', $slice[1]);
    $this->where('year(request_details.printed_at)', $slice[0]);
  } else {
    $this->where('date(request_details.printed_at)', $date);
  }

  if($document != 0){
    $this->where('request_details.document_id', $document);
  }
  $this->groupBy(['DAY(requests.confirmed_at)', 'MONTH(requests.confirmed_at)', 'YEAR(requests.confirmed_at)']);
  $this->groupBy(['DAY(request_details.printed_at)', 'MONTH(request_details.printed_at)', 'YEAR(request_details.printed_at)']);
  return $this->findAll();
}
  public function getReports($type, $date, $document = 0){

    $this->select('request_details.*, students.level ,students.status as student_status,students.suffix,students.year_graduated,requests.confirmed_at,documents.price,requests.created_at as requested_at, requests.reason, documents.document, documents.price, students.firstname, students.lastname, students.student_number, courses.course, courses.abbreviation');
    $this->join('requests', 'request_id = requests.id');
    $this->join('documents', 'document_id = documents.id');
    $this->join('students', 'requests.student_id = students.id');
    $this->join('courses', 'students.course_id = courses.id');

    $q1 = [1, 3];
    $q2 = [4, 6];
    $q3 = [7, 9];
    $q4 = [10, 12];
    
    if($type == 'q1'){
      $this->where('month(request_details.printed_at) >=', $q1[0]);
      $this->where('month(request_details.printed_at) <=', $q1[1]);
      $slice = explode('-', $date);
      $this->where('year(request_details.printed_at)', $slice[0]);
    } else if ($type == 'q2') {
      $this->where('month(request_details.printed_at) >=', $q2[0]);
      $this->where('month(request_details.printed_at) <=', $q2[1]);
      $slice = explode('-', $date);
      $this->where('year(request_details.printed_at)', $slice[0]);
    } else if ($type == 'q3') {
      $this->where('month(request_details.printed_at) >=', $q3[0]);
      $this->where('month(request_details.printed_at) <=', $q3[1]);
      $slice = explode('-', $date);
      $this->where('year(request_details.printed_at)', $slice[0]);
    } else if ($type == 'q4') {
      $this->where('month(request_details.printed_at) >=', $q4[0]);
      $this->where('month(request_details.printed_at) <=', $q4[1]);
      $slice = explode('-', $date);
      $this->where('year(request_details.printed_at)', $slice[0]);
    } else if ($type == 'monthly') {
      $slice = explode('-', $date);
      $this->where('month(request_details.printed_at)', $slice[1]);
      $this->where('year(request_details.printed_at)', $slice[0]);
    } else {
      $this->where('date(request_details.printed_at)', $date);
    }
    if($document != 0){
      $this->where('request_details.document_id', $document);
    }
    return $this->findAll();
  }

  public function sofDeleteByRequestId($id){
    $this->where('request_id', $id);
    return $this->delete();
  }

}
