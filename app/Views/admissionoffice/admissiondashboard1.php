<div class="container-fluid-admission">
<section class="container-fluid" style="margin-top: 50px; padding-left: 20px; padding-right: 20px">
  <div class="d-sm-flex align-items-center justify-content-between mb-4">
  
    <h1 class="h3 mb-0">Admission Dashboard</h1>
        <!-- Button trigger modal -->
        <div class="row">
          <div class="col-auto">
             <form  action="admission/report" method="get">        
              <button type="submit" class="float-end btn btn-primary" formtarget="_blank"> Generate Report</button>
            </form>
            </div>
          <div class="col-auto">
            <a href="<?php echo base_url('admission/add-student-form'); ?>" class="btn btn-primary">Add Student</a>
            </div>
        </div>
  </div>
  <div class="row">
        <!--Complete Card Example -->
        <div class="col-xl-3 col-md-6 mb-4">
          <div class="card pending shadow h-100 py-2">
              <div class="card-body">
                  <a href="<?php echo base_url('/admissionregistrar/complete1'); ?>" style="text-decoration: none;">  
                    <div class="row no-gutters align-items-center">
                      <div class="col mr-2">
                          <div class="fw-bold text-success text-uppercase mb-1">
                            Complete
                          </div>
                          <div class="h5 mb-0 fw-bold"><?php echo count($count_complete); ?></div>
                      </div>
                      <div class="col-auto">
                          <i style="color:green;" class="fas fa-check-circle fa-2x"></i>
                      </div>
                    </div>
                  </a>
              </div>
          </div>
      </div>

      <!--Incomplete Card -->
      <div class="col-xl-3 col-md-6 mb-4">
        <a href="<?php echo base_url('/admissionregistrar/incomplete1'); ?>" style="text-decoration: none;">
          <div class="card process shadow h-100 py-2">
              <div class="card-body">
                  <div class="row no-gutters align-items-center">
                      <div class="col mr-2">
                          <div class="fw-bold text-danger text-uppercase mb-1">
                            Incomplete
                          </div>
                          <div class="h5 mb-0 fw-bold text-gray-800"><?php echo count($count_incomplete); ?></div>
                      </div>
                      <div class="col-auto">
                          <i style="color:red;" class="fas fa-times fa-2x text-gray-300"></i>
                      </div>
                  </div>
              </div>
          </div>
        </a>
      </div>

      <!-- For Re-Checking -->
      <div class="col-xl-3 col-md-6 mb-4">
        <a href="<?php echo base_url('/admissionregistrar/request-rechecking1'); ?>" style="text-decoration: none;">  
          <div class="card printed shadow h-100 py-2">
              <div class="card-body">
                  <div class="row no-gutters align-items-center">
                      <div class="col mr-2">
                          <div class="fw-bold text-warning text-uppercase mb-1">
                            For Re-checking  
                          </div>
                          <div class="h5 mb-0 fw-bold"><?php echo count($count_recheck); ?></div>
                      </div>
                      <div class="col-auto">
                          <i style="color:#ffc107!important;" class="fas fa-pause-circle fa-2x"></i>
                      </div>
                  </div>
              </div>
          </div>
        </a>
      </div>
   
      <!-- Retreive Documents -->
      <div class="col-xl-3 col-md-6 mb-4">
        <a href="<?php echo base_url('admissionregistrar/retrieved-files1'); ?>" style="text-decoration: none;">
          <div class="card complete shadow h-100 py-2">
              <div class="card-body">
                  <div class="row no-gutters align-items-center">
                      <div class="col mr-2">
                          <div class="fw-bold text-info text-uppercase mb-1">
                            Retrieved Credentials
                          </div>
                          <div class="row no-gutters align-items-center">
                              <div class="col-auto">
                                  <div class="h5 mb-0 mr-3 fw-bold"><?php echo count($retrieved_record); ?></div>
                              </div>
                          </div>
                      </div>
                      <div class="col-auto">
                          <i style="color: #0dcaf0! important;" class="fas fa-file-download fa-2x"></i>
                      </div>
                  </div>
              </div>
          </div>
        </a>
      </div>
  </div>

      <?php if (isset($errors['error_message'])): ?>
              <div class="alert alert-success alert-dismissible fade show" role="alert">
                <?=$errors['success_message']?>
                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
              </div>
      <?php endif; ?>
      <div class="card">
        <div class="card-body">
          <div class="table-responsive">
            <table class="table table-striped table-bordered mt-3 dataTable" style="width:100%">
              <thead class="table-dark">
                <tr>
                  <th>Student No.</th>
                  <th>Student Name</th>
                  <th>Course</th>
                  <th>Batch</th>
                  
                  <th>Status</th>
                  <th>Action</th>
                </tr>
              </thead>
              <tbody>
                <?php if (!empty($students)): ?>
                  <?php foreach ($students as $student): ?>
                    <?php
                      $id = $student['user_id'];
                                      
                      $getstudentadmission = new App\Models\StudentadmissionModel; 
                                                    
                      $res = $getstudentadmission->__getSAMDetails($id);
                    ?>
                      <tr>
                        <td><?=esc($student['student_number'])?></td>
                        <td>
                          <?php if (!empty($student['middlename'])): ?>
                            <?=esc(ucwords($student['firstname'].' '.$student['middlename'][0].'. '.$student['lastname']))?>
                          <?php else: ?>
                            <?=esc(ucwords($student['firstname'].' '.$student['lastname']))?>
                          <?php endif ?>
                        </td>
                        <td><?=esc($student['course'])?></td>
                        <td><?=esc($student['student_number'][0]).esc($student['student_number'][1]).esc($student['student_number'][2]).esc($student['student_number'][3])?></td>
                        <td>
                            <?php if ($res != NUll): ?>
                              <?php if ($res['admission_status'] == 'complete'): ?>
                                <div class="badge bg-success text-wrap" style="width: 6rem;">
                                  <?php echo $res['admission_status']; ?>
                                </div>
                              <?php elseif($res['admission_status'] == 'incomplete'): ?>
                                <div class="badge bg-danger text-wrap" style="width: 6rem;">
                                  <?php echo $res['admission_status']; ?>
                                  <?php elseif($res['admission_status'] == 'rechecking'): ?>
                                <div class="badge bg-warning text-wrap" style="width: 6rem;">
                                  <?php echo $res['admission_status']; ?>
                                </div>
                              <?php endif ?>
                            <?php else: ?>
                              <div class="badge bg-default text-wrap" style="width: 6rem;color:black;">
                                No Files
                              </div>
                            <?php endif ?>
                        </td>
                        <td class="text-center">
                          <a href="" class="btn btn-edit text-dark btn-sm" data-bs-toggle="modal" data-bs-target="#staticBackdrop<?php echo $student['student_number']; ?>" data-toggle="tooltip" title="Apply Admission"><i class="fas fa-share-square"></i> </a>
                          <?php if ($res != NUll): ?>
                            <a href="" class="btn text-dark btn-sm" data-bs-toggle="modal" data-bs-target="#staticBackdrop2<?php echo $student['student_number']; ?>" data-toggle="tooltip" title="Retrieve"><i class="fas fa-download"></i></a>
                          
                          <?php endif ?> 
                          <a href="<?php echo base_url('admission/student-admission-file/'.$student['user_id']); ?>" class="btn btn-edit text-dark btn-sm" data-toggle="tooltip" title="View"><i class="fas fa-file-image"></i></a>                                
                        </td>
                      </tr>

                      <!-- Modal -->
                      <div class="modal fade" id="staticBackdrop<?php echo $student['student_number']; ?>" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                        <div class="modal-dialog">
                          <div class="modal-content">
                            <div class="modal-header">
                              <div class="modal-title" id="staticBackdropLabel"></div>
                                <h5>
                                  <?php if (!empty($student['middlename'])): ?>
                                  <?=esc(ucwords($student['firstname'].' '.$student['middlename'][0].'. '.$student['lastname']))?>
                                  <?php else: ?>
                                    <?=esc(ucwords($student['firstname'].' '.$student['lastname']))?>
                                  <?php endif ?>
                                  <br>
                                  <?=esc(ucwords($student['student_number']))?>
                                  <br>
                                  <?=esc(ucwords($student['abbreviation'].' '.$student['year_graduated']))?>
                                </h5>
                              <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>
                              <div class="modal-body">
                                <form action="<?php echo base_url('admissionregistrar/insert-admission1/'.$student['user_id']); ?>" method="post" autocomplete="off">
                                  <?php
                                    $id = $student['user_id'];
                                                    
                                    $getstudentadmission = new App\Models\StudentadmissionModel; 
                                                                  
                                    $res = $getstudentadmission->__getSAMDetails($id);
                                  ?>  

                                    <input type="checkbox" value="1" name="sar_pupcct_resultID" <?php if(!empty($res['sar_pupcct_resultID'])){echo 'checked';} ?>>
                                    <label for="sar_pupcct_resultID">SAR Form/PUPCET/CAEPUP Result</label><br>
                                     <input type="checkbox" value="2" name="f137ID" <?php if(!empty($res['f137ID'])){echo 'checked';} ?>>
                                     <label for="f137ID">F137</label><br>
                                     <input type="checkbox" value="3" name="f138ID" <?php if(!empty($res['f138ID'])){echo 'checked';} ?>>
                                     <label for="f138ID">Grade 10 Card</label><br>
                                     <input type="checkbox" value="11" name="cert_dry_sealID" <?php if(!empty($res['cert_dry_sealID'])){echo 'checked';} ?>>
                                     <label for="cert_dry_sealID">Grade 11 Card</label><br>
                                     <input type="checkbox" value="12" name="cert_dry_sealID_twelve" <?php if(!empty($res['cert_dry_sealID_twelve'])){echo 'checked';} ?>>
                                     <label for="cert_dry_sealID_twelve">Grade 12 Card</label><br>
                                     <input type="checkbox" value="4" name="psa_nsoID" <?php if(!empty($res['psa_nsoID'])){echo 'checked';} ?>>
                                     <label for="psa_nsoID">PSA/NSO</label><br>
                                     <input type="checkbox" value="5" name="good_moralID" <?php if(!empty($res['good_moralID'])){echo 'checked';} ?>>
                                     <label for="good_moralID">Certification of Good Moral</label><br>
                                     <input type="checkbox" value="6" name="medical_certID" <?php if(!empty($res['medical_certID'])){echo 'checked';} ?>>
                                     <label for="medical_certID">Medical Clearance</label><br>
                                     <input type="checkbox" value="7" name="picture_two_by_twoID" <?php if(!empty($res['picture_two_by_twoID'])){echo 'checked';} ?>>
                                     <label for="picture_two_by_twoID">2x2 Picture</label><br>
                                    <hr>
                                    <label>Other Documents:</label><br>
                                     <input type="checkbox" value="8" name="nc_non_enrollmentID" <?php if(!empty($res['nc_non_enrollmentID'])){echo 'checked';} ?>>
                                     <label for="nc_non_enrollmentID">Notarized Cert of Non-enrollment</label><br> 
                                     <input type="checkbox" value="9" name="coc_hs_shsID" <?php if(!empty($res['coc_hs_shsID'])){echo 'checked';} ?>>
                                     <label for="coc_hs_shsID">COC (HS/SHS)</label><br> 
                                      <input type="checkbox" value="10" name="ac_pept_alsID" <?php if(!empty($res['ac_pept_alsID'])){echo 'checked';} ?>>
                                      <label for="ac_pept_alsID">Authenticated Copy PEPT/ALS<br></label><br> 
                                      <hr>
                                    <label>Graduation Requirements:</label><br>
                                      <input type="checkbox" value="13" name="app_grad" <?php if(!empty($res['app_grad'])){echo 'checked';} ?>>Application for Graduation<br>
                                      <input type="checkbox" value="14" name="or_app_grad" <?php if(!empty($res['or_app_grad'])){echo 'checked';} ?>>O.R. of Application of Graduation<br>
                                      <input type="checkbox" value="15" name="latest_regi" <?php if(!empty($res['latest_regi'])){echo 'checked';} ?>>Latest Registration Card<br>
                                      <input type="checkbox" value="16" name="eval_res" <?php if(!empty($res['eval_res'])){echo 'checked';} ?>>Evaluation Result<br>
                                      <input type="checkbox" value="17" name="course_curri" <?php if(!empty($res['course_curri'])){echo 'checked';} ?>>Course Curriculum<br>
                                      <input type="checkbox" value="18" name="cert_candi" <?php if(!empty($res['cert_candi'])){echo 'checked';} ?>>Certificate of Candidacy<br>
                                      <input type="checkbox" value="19" name="gen_clear" <?php if(!empty($res['gen_clear'])){echo 'checked';} ?>>General Clearance<br>
                                      <input type="checkbox" value="20" name="or_grad_fee" <?php if(!empty($res['or_grad_fee'])){echo 'checked';} ?>>O.R. of Graduation Fees<br>
                                      <input type="checkbox" value="21" name="cert_confer" <?php if(!empty($res['cert_confer'])){echo 'checked';} ?>>Certificate of Conferment<br>
                                      <input type="checkbox" value="22" name="schoolid" <?php if(!empty($res['schoolid'])){echo 'checked';} ?>>PUP Taguig School ID<br>
                                      <input type="checkbox" value="23" name="honor_dis" <?php if(!empty($res['honor_dis'])){echo 'checked';} ?>>PUP Taguig Honorable Dismissal<br>
                                      <input type="checkbox" value="24" name="trans_rec" <?php if(!empty($res['trans_rec'])){echo 'checked';} ?>>PUP Taguig Trancript of Record<br>
                                  <br>
                                  <br>
                                  <select class="form-select" name="admission_status" required>
                                    <option value="select_status"?<?php if (isset($res['admission_status']) == 'select_status'){echo 'selected';}?>>Select Status</option>
                                    <option value="complete" <?php if (isset($res['admission_status']) == 'complete'){echo 'selected';}?>>Complete</option>
                                    <option value="incomplete" <?php if (isset($res['admission_status']) == 'incomplete'){echo 'selected';}?>>Incomplete</option>
                                    <option value="rechecking" <?php if (isset($res['admission_status']) == 'rechecking'){echo 'selected';}?>>Rechecking</option>
                                  </select> 
                                  <br>
                                  <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                                  <button type="submit" class="btn btn-primary">Save Changes</button>
                                </form>
                              </div>
                          </div>
                        </div>
                      </div>


                      <!-- Modal2 -->
                      <div class="modal fade" id="staticBackdrop2<?php echo $student['student_number']; ?>" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                        <div class="modal-dialog">
                          <div class="modal-content">
                            <div class="modal-header">
                              <div class="modal-title" id="staticBackdropLabel"></div>
                                <h5>
                                  Retrieve Files
                                </h5>
                              <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>
                              <div class="modal-body">
                                <label>
                                  <?php if (!empty($student['middlename'])): ?>
                                  <?=esc(ucwords($student['firstname'].' '.$student['middlename'][0].'. '.$student['lastname']))?>
                                  <?php else: ?>
                                    <?=esc(ucwords($student['firstname'].' '.$student['lastname']))?>
                                  <?php endif ?>
                                  <br>
                                  <?=esc(ucwords($student['student_number']))?>
                                  <br>
                                  <?=esc(ucwords($student['abbreviation'].' '.$student['year_graduated']))?>
                                </label>
                                <hr>
                                <form action="<?php echo base_url('admission/retreived-admission-files1/'.$student['user_id']); ?>" method="post" autocomplete="off">                            
                                  <input type="checkbox" value="2" name="f137ID"> F137<br>
                                  <input type="checkbox" value="3" name="f138ID"> Grade 10 Card<br>
                                  <input type="checkbox" value="11" name="cert_dry_sealID"> Grade 11 Card<br>
                                  <input type="checkbox" value="12" name="cert_dry_sealID_twelve"> Grade 12 Card<br>
                                  <hr>
                                    <textarea class="form-control" placeholder="Reason:" name="reasons" required></textarea>
                                  <br>
                                  <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                                  <button type="submit" class="btn btn-primary" name="btnretrieved">Save Changes</button>
                                </form>
                              </div>
                          </div>
                        </div>
                      </div>

                  <?php endforeach; ?>
                <?php endif; ?>
              </tbody>
            </table>
          </div>
        </div>
      </div>
</section>
</form>