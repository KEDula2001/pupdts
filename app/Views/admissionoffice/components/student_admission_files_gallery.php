
<div class="container" id="content">
  <div class="d-sm-flex align-items-center justify-content-between mb-4">
      <nav style="--bs-breadcrumb-divider: '<'; font-weight: bold;" aria-label="breadcrumb">
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="<?php echo base_url('admission'); ?>"><i class="fas fa-home"></i></a></li>
          <li class="breadcrumb-item active" aria-current="page">Back to Dashboard</li>
        </ol>
      </nav>
  </div>
  <div class="row">
    <div class="col-md-12">
      <div class="card">
        <div class="card-body">
          <div class="row">
            <div class="col-md-6">
              <h3>
                <?php if (!empty($student['middlename'])): ?>
                  <?=esc(ucwords($student['firstname'].' '.$student['middlename'][0].'. '.$student['lastname']))?>
                <?php else: ?>
                  <?=esc(ucwords($student['firstname'].' '.$student['lastname']))?>
                <?php endif ?>
                |
                <?=esc(ucwords($student['student_number']))?>
              </h3>
            </div>
            <hr>
          </div>
          <!--.$student['user_id'] -->
          <div class="row">
            <form action = "<?php echo base_url('/admission/student-status/'.$student['user_id']);?>" method = "post"> 
            <div class="col-12"> 
              <div class="row">
                <!--PUPCET/CAEPUP 1-->
                <div class = "col">
                    <a href="<?php if (!empty($image_file_record['sar_pupcct_results_files'])){echo base_url('uploads/'.$image_file_record['sar_pupcct_results_files']);} ?>" data-toggle="lightbox" data-gallery="example-gallery" class="col-lg-3 col-md-4 col-6 my-3" style="text-decoration: none;">
                    <?php if (!empty($image_file_record['sar_pupcct_results_files'])): ?>
                      <img src="<?php echo base_url('uploads/'.$image_file_record['sar_pupcct_results_files']); ?>" class="img-fluid card">
                    <?php else: ?>
                      <h3 align="center">No files</h3>
                    <?php endif ?>
                    <div align="center">
                      <label style="color:#dc3545;">SAR Form/PUPCET/CAEPUP Result</label>
                    </div>
                    </a>
                    <div align = "center">
                    <select name="sar_pupcet_result_status" id="test" align = "center" class = "form-select-sm">
                    <option selected disabled> Select Status</option>
                    <option value = "approve"> Approve </option>
                    <option value = "reject"> Disapprove </option>
                    </select>
                    <br>
                    <?php if(isset($errors['sar_pupcet_result_status'])):?>
                                    <small class="text-danger"><?=esc($errors['sar_pupcet_result_status'])?></small>
                    <?php endif;?>
                    </div>
                </div> 
                <!--PUPCET/CAEPUP 2-->
                <!--F137-->
                <div class = "col">
                <a href="<?php if (!empty($image_file_record['f137_files'])){echo base_url('uploads/'.$image_file_record['f137_files']);} ?>" data-toggle="lightbox" data-gallery="example-gallery" class="col-lg-3 col-md-4 col-6 my-3" style="text-decoration: none;">
                    <?php if (!empty($image_file_record['f137_files'])): ?>  
                      <img src="<?php echo base_url('uploads/'.$image_file_record['f137_files']); ?>" class="img-fluid card">
                    <?php else: ?>
                      <h3 align="center">No Files</h3>
                    <?php endif ?>
                      <div align="center">
                        <label style="color:#dc3545;">Form 137</label>
                      </div>
                  </a>
                  <div align = "center">
                    <select name="f137_status" id="test" align = "center" class = "form-select-sm">
                    <option selected disabled> Select Status</option>
                    <option value = "approve"> Approve </option>
                    <option value = "reject"> Disapprove </option>
                    </select>
                    <br>
                    <?php if(isset($errors['f137_status'])):?>
                                    <small class="text-danger"><?=esc($errors['f137_status'])?></small>
                    <?php endif;?>
                    </div>
                  </div>
                <!--F137-->

                  
                <!--G10 card status 3-->
                  <div class = "col">
                  <a href="<?php if (!empty($image_file_record['f138_files'])){echo base_url('uploads/'.$image_file_record['f138_files']);} ?>" data-toggle="lightbox" data-gallery="example-gallery" class="col-lg-3 col-md-4 col-6 my-3" style="text-decoration: none;">
                      <?php if (!empty($image_file_record['f138_files'])): ?>  
                        <img src="<?php echo base_url('uploads/'.$image_file_record['f138_files']); ?>" class="img-fluid card" style="text-decoration: none;">
                      <?php else: ?>
                        <h3 align="center">No files</h3>
                      <?php endif ?>
                      <div align="center">
                        <label style="color:#dc3545;">Grade 10 Card</label>
                      </div>
                  </a>
                  <div align = "center">
                    <select name="g10_status" id="test" align = "center" class = "form-select-sm">
                    <option selected disabled> Select Status</option>
                    <option value = "approve"> Approve </option>
                    <option value = "reject"> Disapprove </option>
                    </select>
                    <br>
                    <?php if(isset($errors['g10_status'])):?>
                                    <small class="text-danger"><?=esc($errors['g10_status'])?></small>
                    <?php endif;?>
                    </div>
                  </div>

                
                  </div>
                <!--G10 card status 3 END-->

                  
                  <!--G11 card status 4 NEW 1-->
                  <div class = "row"> 
                  <div class = "col">
                  <a href="<?php if (!empty($image_file_record['f138_files'])){echo base_url('uploads/'.$image_file_record['f138_files']);} ?>" data-toggle="lightbox" data-gallery="example-gallery" class="col-lg-3 col-md-4 col-6 my-3" style="text-decoration: none;">
                      <?php if (!empty($image_file_record['f138_files'])): ?>  
                        <img src="<?php echo base_url('uploads/'.$image_file_record['f138_files']); ?>" class="img-fluid card" style="text-decoration: none;">
                      <?php else: ?>
                        <h3 align="center">No files</h3>
                      <?php endif ?>
                      <div align="center">
                        <label style="color:#dc3545;">Grade 11 Card</label>
                      </div>
                  </a>
                  <div align = "center">
                    <select name="g11_status" id="test" align = "center" class = "form-select-sm">
                    <option selected disabled> Select Status</option>
                    <option value = "approve"> Approve </option>
                    <option value = "reject"> Disapprove </option>
                    </select>
                    <br>
                    <?php if(isset($errors['g11_status'])):?>
                                    <small class="text-danger"><?=esc($errors['g11_status'])?></small>
                    <?php endif;?>
                    </div>
                  </div>
                   <!--G11 card status 1-->

                  <!--G12 card status 2-->
                  <div class = "col">
                  <a href="<?php if (!empty($image_file_record['cert_dry_sealID_twelve_files'])){echo base_url('uploads/'.$image_file_record['cert_dry_sealID_twelve_files']);} ?>" data-toggle="lightbox" data-gallery="example-gallery" class="col-lg-3 col-md-4 col-6 my-3" style="text-decoration: none;">
                      <?php if (!empty($image_file_record['cert_dry_sealID_twelve_files'])): ?>  
                        <img src="<?php echo base_url('uploads/'.$image_file_record['cert_dry_sealID_twelve_files']); ?>" class="img-fluid card" style="text-decoration: none;">
                      <?php else: ?>
                        <h3 align="center">No files</h3>
                      <?php endif ?>
                      <div align="center">
                        <label style="color:#dc3545;">Grade 12 Card</label>
                      </div>
                  </a>
                  <div align = "center">
                    <select name="g12_status" id="test" align = "center" class = "form-select-sm">
                    <option selected disabled> Select Status</option>
                    <option value = "approve"> Approve </option>
                    <option value = "reject"> Disapprove </option>
                    </select>
                    <br>
                    <?php if(isset($errors['g12_status'])):?>
                                    <small class="text-danger"><?=esc($errors['g12_status'])?></small>
                    <?php endif;?>
                    </div>
                  </div>
                  <!--G12 card status 2-->

                  <!--PSA/NSO status 3-->
                  <div class = "col">
                  <a href="<?php if (!empty($image_file_record['psa_nso_files'])){echo base_url('uploads/'.$image_file_record['psa_nso_files']);} ?>" data-toggle="lightbox" data-gallery="example-gallery" class="col-lg-3 col-md-4 col-6 my-3" style="text-decoration: none;">
                      <?php if (!empty($image_file_record['psa_nso_files'])): ?>  
                        <img src="<?php echo base_url('uploads/'.$image_file_record['psa_nso_files']); ?>" class="img-fluid card">
                      <?php else: ?>
                        <h3 align="center">No Files</h3>
                      <?php endif ?>
                      <div align="center">
                        <label style="color:#dc3545;">PSA/NSO Birth Certificate</label>
                      </div>
                  </a>
                  <div align = "center">
                    <select name="psa_nso_status" id="test" align = "center" class = "form-select-sm">
                    <option selected disabled> Select Status</option>
                    <option value = "approve"> Approve </option>
                    <option value = "reject"> Disapprove </option>
                    </select>
                    <br>
                    <?php if(isset($errors['psa_nso_status'])):?>
                                    <small class="text-danger"><?=esc($errors['psa_nso_status'])?></small>
                    <?php endif;?>
                    </div>
                  </div>

                      </div>
                  <!--PSA/NSO status 3 END-->



                    
                  <!--Good moral status 1 START-->
                  <div class = "row">
                  <div class = "col">
                  <a href="<?php if (!empty($image_file_record['good_moral_files'])){echo base_url('uploads/'.$image_file_record['good_moral_files']);} ?>" data-toggle="lightbox" data-gallery="example-gallery" class="col-lg-3 col-md-4 col-6 my-3" style="text-decoration: none;">
                      <?php if (!empty($image_file_record['good_moral_files'])): ?>  
                        <img src="<?php echo base_url('uploads/'.$image_file_record['good_moral_files']); ?>" class="img-fluid card">
                      <?php else: ?>
                        <h3 align="center">No Files</h3>
                      <?php endif ?>
                      <div align="center">
                        <label style="color:#dc3545;">Certification of Good Moral</label>
                      </div>
                  </a>
                  <div align = "center">
                    <select name="goodmoral_status" id="test" align = "center" class = "form-select-sm">
                    <option selected disabled> Select Status</option>
                    <option value = "approve"> Approve </option>
                    <option value = "reject"> Disapprove </option>
                    </select>
                    <br>
                    <?php if(isset($errors['goodmoral_status'])):?>
                                    <small class="text-danger"><?=esc($errors['goodmoral_status'])?></small>
                    <?php endif;?>
                    </div>
                  </div>
                  <!--Good moral status 1 START-->
                  
                  <!--Med cert status 2-->
                  <div class = "col">
                  <a href="<?php if (!empty($image_file_record['medical_cert_files'])){echo base_url('uploads/'.$image_file_record['medical_cert_files']);} ?>" data-toggle="lightbox" data-gallery="example-gallery" class="col-lg-3 col-md-4 col-6 my-3" style="text-decoration: none;">
                      <?php if (!empty($image_file_record['medical_cert_files'])): ?>  
                        <img src="<?php echo base_url('uploads/'.$image_file_record['medical_cert_files']); ?>" class="img-fluid card">
                      <?php else: ?>
                        <h3 align="center">No Files</h3>
                      <?php endif ?>
                      <div align="center">
                        <label style="color:#dc3545;">Medical Clearance</label>
                      </div>
                  </a>
                  <div align = "center">
                    <select name="medical_cert_status" id="test" align = "center" class = "form-select-sm">
                    <option selected disabled> Select Status</option>
                    <option value = "approve"> Approve </option>
                    <option value = "reject"> Disapprove </option>
                    </select>
                    <br>
                    <?php if(isset($errors['medical_cert_status'])):?>
                                    <small class="text-danger"><?=esc($errors['medical_cert_status'])?></small>
                    <?php endif;?>
                    </div>
                  </div>
                  <!--Med cert status 2-->


                  <!--2x2 Photo status 3 END-->
                  <div class = "col">
                  <a href="<?php if (!empty($image_file_record['picture_two_by_two_files'])){echo base_url('uploads/'.$image_file_record['picture_two_by_two_files']);} ?>" data-toggle="lightbox" data-gallery="example-gallery" class="col-lg-3 col-md-4 col-6 my-3" style="text-decoration: none;">
                      <?php if (!empty($image_file_record['picture_two_by_two_files'])): ?>  
                        <img src="<?php echo base_url('uploads/'.$image_file_record['picture_two_by_two_files']); ?>" class="img-fluid card">
                      <?php else: ?>
                        <h3 align="center">No Files</h3>
                      <?php endif ?>
                      <div align="center">
                        <label style="color:#dc3545;">2x2 Picture</label>
                      </div>
                  </a>
                  <div align = "center">
                    <select name="pictwobytwo_status" id="test" align = "center" class = "form-select-sm">
                    <option selected disabled> Select Status</option>
                    <option value = "approve"> Approve </option>
                    <option value = "reject"> Disapprove </option>
                    </select>
                    <br>
                    <?php if(isset($errors['pictwobytwo_status'])):?>
                                    <small class="text-danger"><?=esc($errors['pictwobytwo_status'])?></small>
                    <?php endif;?>
                    </div>
                  </div>
                      </div>
                  <!--2x2 Photo status 3 END-->
              </div>
            </div>
          </div>
                     <div align = "right" style="padding:  20px">
                        <button type = "submit" class = "btn btn-primary font-weight-bold">Submit</button>
                      </div>
            </form> 
        </div>  
      </div>
    </div>
  </div>
</div>

