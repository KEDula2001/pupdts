<?php

namespace Modules\StudentManagement\Models;
use App\Models\BaseModel;
use Modules\UserManagement\Models\UsersModel;
use Modules\StudentManagement\Controllers\Students;

/**
 *
 */
class StudentsModel extends BaseModel
{

  protected $table = 'students';

  protected $allowedFields = [
    'id', 
    'student_number', 
    'firstname', 
    'lastname',
    'suffix', 
    'middlename', 
    'gender', 
    'birthdate', 
    'contact', 
    'status',
    'address',
    'admitted_year_sy',
    'semester',
    'elem_school_address',
    'elem_year_graduated',
    'high_school_address',
    'high_year_graduated',
    'college_school_address',
    'year_graduated',
    'year_graduated', 
    'course_id', 
    'user_id', 
    'status', 
    'level'
  ];

  function __construct(){
    parent::__construct();
  }

  public function updateStudentData($id, $info)
  {
    $this->set($info);
    $this->where('id', $id);
    return $this->update();
  }

  public function getStudentID($id){ 
    $this->select('user_id');
    $this->where('id', $id);

    return $this->findAll();
  }

  public function getStudentDetails($id){ 
    $this->select('students.*, u.email');
    $this->join('users as u', 'students.user_id = u.id', 'left');
    $this->where('students.id', $id);

    return $this->findAll();
  }

  public function getStudentDetailsByUserId($id){ 
    $this->select('students.*, u.email');
    $this->join('users as u', 'students.user_id = u.id', 'left');
    $this->where('students.user_id', $id);

    return $this->findAll();
  }
  
  public function getUserIdInsert($student_number, $email) {
    $user = new UsersModel();
    $user->select('id');
    $user->where('username', $student_number);
    $user->where('email', $email);
    return $user->findAll();
  }

  public function insertStudent($data)
  {
    // die(print_r($data));
    $this->transBegin();

      $user = new UsersModel();
      $password = random_string('alnum', 8);
      $userData = [
        'username' => $data['student_number'],
        'password' => password_hash($password, PASSWORD_DEFAULT),
        'token' => null,
        'email' => $data['email'],
        'role_id' => 4
      ];
      // insert to user table
      $user->insert($userData);
      $id = $user->getInsertID();

      $data['user_id'] = $id;
      // insert to student table
      $this->insert($data);

      $student = new Students();
      if($student->sendPassword($data['student_number'], $password, $data['email']))
      {
        $this->transCommit();
        return true;
      }
      else
      {
        $this->transRollback();
        return false;
      }

  }

  public function editStudents($data, $id)
  {
    //$this->transBegin();
    //die($data['email']);
    $s_data = [
      'student_number' => $data['student_number'], 
      'birthdate' => $data['birthdate'],
      'firstname' => $data['firstname'],
      'middlename' => $data['middlename'],
      'lastname' => $data['lastname']
    ];

      $student = new Students();
      $studID = $this->getStudentID($id)[0];
      $user = new UsersModel();
      $userData = [
        'email' => $data['email'],
      ];

    $user->update($studID['user_id'],$userData);

    
    //die($studID['user_id']);

    //die($user->getInsertID());
    
    //$this->set($s_data);
    //$this->where('id', $id);
      return $this->update($id, $s_data);

      
      
      // if($student->sendPassword($password, $data['email']))
      // {
      //   //$this->transCommit();
      //   return true;
      // }
      // else
      // {
      //   //$this->transRollback();
      //   return false;
      // }

  }

  public function getStudentByStatus($status, $role){
    $this->select('students.id, students.firstname, students.lastname, students.middlename, students.student_number, students.user_id, students.contact, users.status, users.username,users.email, roles.role');
    $this->join('users', 'users.id = students.user_id');
    $this->join('roles', 'users.role_id = roles.id');
    $this->where('users.status', $status);
    if ($role != null) {
      $this->where('roles.id', $role);
    }
    return $this->findAll();
  }

  public function getDetail($condition = []){

    $this->select('students.*, courses.course, courses.abbreviation, users.id as user_id, users.email');
    $this->join('courses', 'students.course_id = courses.id');
    $this->join('users', 'students.user_id = users.id');
    foreach ($condition as $condition => $value) {
      $this->where($condition, $value);
    }
    return $this->findAll();

  }

  public function softDeleteByUserId($id){
    $this->where('user_id', $id);
    return $this->delete();
  }

  public function getStudentByUserId($id){
    $this->where('user_id', $id);
    return $this->findAll();
  }

  public function getNull($id){
    $this->select('contact, gender, id, status');
    $this->where('id', $id);
    return $this->findAll();
  }

  public function editOwn($data){
    $this->transStart();

    $user = new UsersModel();
    $userData = [
      'email' => $data['email'],
    ];

      $this->update($_SESSION['student_id'],$data);
      $user->update($_SESSION['user_id'],$userData);
    $this->transComplete();
    return $this->transStatus();
  }

}
