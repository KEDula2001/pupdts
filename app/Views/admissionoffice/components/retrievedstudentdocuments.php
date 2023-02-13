<div style="padding: 20px">
<section class="container-fluid">
  <div class="d-sm-flex align-items-center justify-content-between mb-0 mt-5 ms-5">
  <nav style="--bs-breadcrumb-divider: '<'; font-weight: bold;" aria-label="breadcrumb">
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="<?php echo base_url('admission'); ?>"><i class="fas fa-home"></i></a></li>
          <li class="breadcrumb-item active" aria-current="page">Back to Dashboard</li>
        </ol>
        <form  action="/admission/retrieved-report" method="get">  
            <!-- di ko din alam kung paano nagana to kahit wala namang controller haha -->         
            <button type="submit" class="float-end btn btn-primary" formtarget="_blank"> Generate Report</button>
        </form>
      </nav>
     
  </div>

  <div class="row">
    <div class="col-4"></div>
    <div class="col-xl-3 col-md-6 mb-4">
      <div class="card pending shadow h-100 py-2">
        <div class="card-body"> 
            <div class="row no-gutters align-items-center">
              <div class="col mr-2">
                <div class="fw-bold text-success text-uppercase mb-1">
                  Retrieved Credentials
                </div>
                <div class="h5 mb-0 fw-bold"><?php echo count($retrieved_record); ?></div>
              </div>
              <div class="col-auto">
                <i style="color:green;" class="fas fa-download fa-2x"></i>
              </div>
            </div>
        </div>
      </div>
    </div>
    <div class="col-4"></div>
  </div>
<br>
  <div class="card">
    <div class="card-body">
      <table class="table table-responsive table-striped table-bordered mt-3 dataTable" style="width:100%">
        <thead class="table-dark">
          <tr>
            <th>Student No.</th>
            <th>Student Name</th>
            <th>Course</th>
            <th>File Name</th>
            <th>Status</th>
            <th>Date Retrieved</th>
            <th>Action</th>
          </tr>
        </thead>
        <tbody>
        
          <?php foreach ($retrieved_record as $student): ?>
            <?php
                  $id = $student['user_id'];
                  $getstudentadmission = new App\Models\StudentadmissionModel; 
                                                      
                  $res = $getstudentadmission->__getSAMDetails($id);
                ?>
            <tr>
              <td><?=esc($student['student_number']) ?></td>
              <td>
                <?php if (!empty($student['middlename'])): ?>
                  <?=esc(ucwords($student['firstname'].' '.$student['middlename'].' '.$student['lastname']))?>
                <?php else: ?>
                  <?=esc(ucwords($student['firstname'].' '.$student['lastname']))?>
                <?php endif ?>
              </td>
              <td><?=esc(ucwords($student['abbreviation']))?></td>
              <td>
                <?php 
                  if ($student['requirementsID'] == 1){
                    echo 'SAR Form/PUPCCT Results';
                  }elseif ($student['requirementsID'] == 2) {
                    echo 'F137';
                  }elseif ($student['requirementsID'] == 3) {
                    echo 'Grade 10 Card';
                  }elseif ($student['requirementsID'] == 11) {
                    echo 'Grade 11 Card';
                  }elseif ($student['requirementsID'] == 12) {
                    echo 'Grade 12 Card';
                  }elseif ($student['requirementsID'] == 4) {
                    echo 'PSA/NSO';
                  }elseif ($student['requirementsID'] == 5) {
                    echo 'Certification of Good Moral';
                  }elseif ($student['requirementsID'] == 6) {
                    echo 'Medical Clearance';
                  }elseif ($student['requirementsID'] == 7) {
                    echo '2x2 Picture';
                  }
                ?>
              </td>
              <td>Retrieved</td>
              <td><?=esc($student['retrieved_at'])?></td>
              <td>
                <a href="" class="btn btn-edit text-dark btn-sm" data-bs-toggle="modal" data-bs-target="#staticBackdrop<?php echo $student['student_number']; ?>">Update Checklist</a> 
              </td>


                      <!-- modal -->
                      <div class="modal fade" id="staticBackdrop<?php echo $student['student_number']; ?>" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                        <div class="modal-dialog">
                          <div class="modal-content">
                            <div class="modal-header">
                              <div class="modal-title" id="staticBackdropLabel"></div>
                                <h5>
                                  <?php if (!empty($student['middlename'])): ?>
                                  <?=esc(ucwords($student['firstname'].' '.$student['middlename'].' '.$student['lastname']))?>
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
                                <form action="<?php echo base_url('admission/insert-admission/'.$student['user_id']); ?>" method="post" autocomplete="off">
                                  <?php
                                    $id = $student['user_id'];
                                                    
                                    $getstudentadmission = new App\Models\StudentadmissionModel; 
                                                                  
                                    $res = $getstudentadmission->__getSAMDetails($id);
                                  ?>  
                                    <input type="checkbox" value="1" name="sar_pupcct_resultID" <?php if(!empty($res['sar_pupcct_resultID'])){echo 'checked';} ?>>
                                    <label for="sar_pupcct_resultID">SAR Form/PUPCCT Results</label><br>
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
                                      
                                    <?php if (!empty($res)): ?>
                                      <select class="form-select" name="admission_status" required>
                                          <option value="complete" <?php if ($res['admission_status'] == 'complete'){echo 'selected';} ?>>Complete</option>
                                          <option value="incomplete" <?php if ($res['admission_status'] == 'incomplete'){echo 'selected';} ?>>Incomplete</option>
                                          <option value="rechecking" <?php if ($res['admission_status'] == 'rechecking'){echo 'selected';} ?>>Rechecking</option>
                                      </select>
                                    <?php endif ?>  
                                  <br>
                                  <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                                  <button type="submit" class="btn btn-primary">Save Changes</button>
                                </form>
                              </div>
                          </div>
                        </div>
                      </div>
                      <!-- modal -->

            </tr>
          <?php endforeach ?>
        </tbody>
      </table>
    </div>
  </div>
  
</section>
                </div>