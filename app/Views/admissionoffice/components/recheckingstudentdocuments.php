<div style="padding: 20px">
<section class="container-fluid">
  <div class="d-sm-flex align-items-center justify-content-between mb-0 mt-5 ms-5">
   <nav style="--bs-breadcrumb-divider: '<'; font-weight: bold;" aria-label="breadcrumb">
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="<?php echo base_url('admission'); ?>"><i class="fas fa-home"></i></a></li>
          <li class="breadcrumb-item active" aria-current="page">Back to Dashboard</li>
        </ol>
        <form  action="/admission/rechecking-report" method="get">  
            <!-- di ko din alam kung paano nagana to kahit wala namang controller haha -->         
            <button type="submit" class="float-end btn btn-primary" formtarget="_blank"> Generate Report</button>
        </form>
      </nav>
      
  </div>

  <div class="row">

    <div class="col-4"></div>
   <div class="col-xl-3 col-md-6 mb-4">
      <div class="card printed shadow h-100 py-2">
        <div class="card-body">
          <div class="row no-gutters align-items-center">
            <div class="col mr-2">
              <div class="fw-bold text-warning text-uppercase mb-1">
                For Re-checking  
              </div>
              <div class="h5 mb-0 fw-bold"><?php echo count($count_rechecking); ?></div>
            </div>
            <div class="col-auto">
              <i style="color:#ffc107!important;" class="fas fa-pause-circle fa-2x"></i>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="col-4"></div>
  </div>

  <div class="container-admission" style="background: white">
  <table class="table table-responsive table-striped table-bordered mt-3 dataTable" style="width:100%">
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
              // var_dump($res);
            ?>
            <?php if (!empty($res)): ?>
              <?php if ($res['admission_status'] == 'rechecking'): ?>
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
                  
                  <td><?=esc($student['year_graduated'])?></td>
                  <td align="center">
                    <?php if ($res != NUll): ?>
                      <?php if ($res['admission_status'] == 'rechecking'): ?>
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
                  <td>
                    <a href="" class="btn btn-edit text-dark btn-sm" data-bs-toggle="modal" data-bs-target="#staticBackdrop<?php echo $student['student_number']; ?>"><i class="fas fa-eye"></i> View </a>
                  </td>
                </div>

                  <!-- modal -->
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
                            <form action="<?php echo base_url('admission/insert-admission/'.$student['user_id']); ?>" method="post" autocomplete="off">
                              <?php
                                $id = $student['user_id'];
                                                
                                $getstudentadmission = new App\Models\StudentadmissionModel; 
                                                              
                                $res = $getstudentadmission->__getSAMDetails($id);
                              ?>  

                                <input type="checkbox" value="1" name="sar_pupcct_resultID" <?php if(!empty($res['sar_pupcct_resultID'])){echo 'checked';} ?>>SAR Form/PUPCCT Results<br>
                                 <input type="checkbox" value="2" name="f137ID" <?php if(!empty($res['f137ID'])){echo 'checked';} ?>>F137<br>
                                 <input type="checkbox" value="3" name="f138ID" <?php if(!empty($res['f138ID'])){echo 'checked';} ?>>Grade 10 Card<br>
                                 <input type="checkbox" value="11" name="cert_dry_sealID" <?php if(!empty($res['cert_dry_sealID'])){echo 'checked';} ?>>Grade 11 Card<br>
                                 <input type="checkbox" value="4" name="psa_nsoID" <?php if(!empty($res['psa_nsoID'])){echo 'checked';} ?>>PSA/NSO<br>
                                 <input type="checkbox" value="5" name="good_moralID" <?php if(!empty($res['good_moralID'])){echo 'checked';} ?>>Certification of Good Moral<br>
                                 <input type="checkbox" value="6" name="medical_certID" <?php if(!empty($res['medical_certID'])){echo 'checked';} ?>>Medical Clearance<br>
                                 <input type="checkbox" value="7" name="picture_two_by_twoID" <?php if(!empty($res['picture_two_by_twoID'])){echo 'checked';} ?>>2x2 Picture<br>
                                <hr>
                                <label>Other Documents:</label><br>
                                 <input type="checkbox" value="8" name="nc_non_enrollmentID" <?php if(!empty($res['nc_non_enrollmentID'])){echo 'checked';} ?>>Notarized Cert of Non-enrollment<br>
                                  <input type="checkbox" value="9" name="coc_hs_shsID" <?php if(!empty($res['coc_hs_shsID'])){echo 'checked';} ?>>COC (HS/SHS)<br>
                                  <input type="checkbox" value="10" name="ac_pept_alsID" <?php if(!empty($res['ac_pept_alsID'])){echo 'checked';} ?>>Authenticated Copy PEPT/ALS<br>
                                  
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
              <?php endif ?>
            <?php endif ?>
        <?php endforeach ?>
      <?php endif ?>
    </tbody>
  </table>
</section>
                                </div>