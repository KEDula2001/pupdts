
<div class="container" id="content">
  <div class="d-sm-flex align-items-center justify-content-between mb-4 mt-4">
      <nav style="--bs-breadcrumb-divider: '<'; font-weight: bold;" aria-label="breadcrumb">
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="<?php echo base_url('admission'); ?>"><i class="fas fa-home"></i></a></li>
          <li class="breadcrumb-item active" aria-current="page">Back to Dashboard</li>
        </ol>
      </nav>
  </div>

  <style>


  </style>
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
                    <?php if($documentstatus['sar_pupcet_result_status'] != 'approve') :?>
                    <select name="sar_pupcet_result_status" id="test" align = "center" class = "form-select-sm" <?= !empty($image_file_record['sar_pupcct_results_files']) ? '': 'disabled'?>>
                    <option selected disabled> Select Status</option>
                    <option value = "approve" <?= empty($documentstatus['sar_pupcet_result_status']) ? '': 'selected'?> > Approve </option>
                    <option value = "reject" <?= !empty($image_file_record['sar_pupcct_results_files']) ? '': 'selected'?>> Disapprove </option>
                    </select>
                    <?php if(empty($image_file_record['sar_pupcct_results_files'])):?>
                      <input type = "hidden" value = "reject" name = "sar_pupcet_result_status"/> 
                    <?php endif;?>
                    <?php else:?>
                        <?php if(!empty($documentstatus['sar_pupcet_result_status'])):?>
                        <input type = "hidden" value = "approve" name = "sar_pupcet_result_status"/>
                        <input type = "text" class = "text-center" value = "Approved" disabled/>  
                        <?php endif;?>
                    <?php endif;?>
                    
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
                    <?php if($documentstatus['f137_status'] != "approve") :?>
                          <select name="f137_status" id="test" align = "center" class = "form-select-sm"<?= !empty($image_file_record['f137_files']) ? '': 'disabled'?>>
                              <option selected disabled> Select Status</option>
                              <option value = "approve"> Approve </option>
                              <option value = "reject" <?= !empty($image_file_record['f137_files']) ? '': 'selected'?>> Disapprove </option>
                          </select>
                      <?php if(empty($image_file_record['f137_files'])):?>
                         <input type = "hidden" value = "reject" name = "f137_status"/> 
                      <?php endif;?>
                      <?php else:?>
                        <?php if(!empty($documentstatus['f137_status'])):?>
                        <input type = "hidden" value = "approve" name = "f137_status"/>
                        <input type = "text" class = "text-center" value = "Approved" disabled/>  
                        <?php endif;?>
                    <?php endif;?>
                    <br>
                    <?php if(isset($errors['f137_status'])):?>
                                    <small class="text-danger"><?=esc($errors['f137_status'])?></small>
                    <?php endif;?>
                    </div>
                  </div>
                <!--F137-->

                  
                <!--G10 card status 3-->
                  <div class = "col">
                  <a href="<?php if (!empty($image_file_record['g10_files'])){echo base_url('uploads/'.$image_file_record['g10_files']);} ?>" data-toggle="lightbox" data-gallery="example-gallery" class="col-lg-3 col-md-4 col-6 my-3" style="text-decoration: none;">
                      <?php if (!empty($image_file_record['g10_files'])): ?>  
                        <img src="<?php echo base_url('uploads/'.$image_file_record['g10_files']); ?>" class="img-fluid card" style="text-decoration: none;">
                      <?php else: ?>
                        <h3 align="center">No files</h3>
                      <?php endif ?>
                      <div align="center">
                        <label style="color:#dc3545;">Grade 10 Card</label>
                      </div>
                  </a>
                  <div align = "center">
                  <?php if($documentstatus['g10_status'] != "approve") :?>
                    <select name="g10_status" id="test" align = "center" class = "form-select-sm"<?= !empty($image_file_record['g10_files']) ? '': 'disabled'?>>
                    <option selected disabled> Select Status</option>
                    <option value = "approve"> Approve </option>
                    <option value = "reject" <?= !empty($image_file_record['g10_files']) ? '': 'selected'?>> Disapprove </option>
                    </select>
                    <?php if(empty($image_file_record['g10_files'])):?>
                      <input type = "hidden" value = "reject" name = "g10_status"/> 
                    <?php endif;?>
                    <?php else:?>
                        <?php if(!empty($documentstatus['g10_status'])):?>
                        <input type = "hidden" value = "approve" name = "g10_status"/>
                        <input type = "text" class = "text-center" value = "Approved" disabled/>  
                        <?php endif;?>
                    <?php endif;?>
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
                  <a href="<?php if (!empty($image_file_record['g11_files'])){echo base_url('uploads/'.$image_file_record['g11_files']);} ?>" data-toggle="lightbox" data-gallery="example-gallery" class="col-lg-3 col-md-4 col-6 my-3" style="text-decoration: none;">
                      <?php if (!empty($image_file_record['g11_files'])): ?>  
                        <img src="<?php echo base_url('uploads/'.$image_file_record['g11_files']); ?>" class="img-fluid card" style="text-decoration: none;">
                      <?php else: ?>
                        <h3 align="center">No files</h3>
                      <?php endif ?>
                      <div align="center">
                        <label style="color:#dc3545;">Grade 11 Card</label>
                      </div>
                  </a>
                  <div align = "center">
                    <?php if($documentstatus['g11_status'] != "approve") :?>
                    <select name="g11_status" id="test" align = "center" class = "form-select-sm" <?= !empty($image_file_record['g11_files']) ? '': 'disabled'?>>
                    <option selected disabled> Select Status</option>
                    <option value = "approve"> Approve </option>
                    <option value = "reject" <?= !empty($image_file_record['g11_files']) ? '': 'selected'?>> Disapprove </option>
                    </select>
                    <?php if(empty($image_file_record['g11_files'])):?>
                      <input type = "hidden" value = "reject" name = "g11_status"/> 
                    <?php endif;?>
                    <?php else:?>
                        <?php if(!empty($documentstatus['g11_status'])):?>
                        <input type = "hidden" value = "approve" name = "g11_status"/>
                        <input type = "text" class = "text-center" value = "Approved" disabled/>  
                        <?php endif;?>
                    <?php endif;?>
                    <br>
                    <?php if(isset($errors['g11_status'])):?>
                                    <small class="text-danger"><?=esc($errors['g11_status'])?></small>
                    <?php endif;?>
                    </div>
                  </div>
                   <!--G11 card status 1-->

                  <!--G12 card status 2-->
                  <div class = "col">
                  <a href="<?php if (!empty($image_file_record['g12_files'])){echo base_url('uploads/'.$image_file_record['g12_files']);} ?>" data-toggle="lightbox" data-gallery="example-gallery" class="col-lg-3 col-md-4 col-6 my-3" style="text-decoration: none;">
                      <?php if (!empty($image_file_record['g12_files'])): ?>  
                        <img src="<?php echo base_url('uploads/'.$image_file_record['g12_files']); ?>" class="img-fluid card" style="text-decoration: none;">
                      <?php else: ?>
                        <h3 align="center">No files</h3>
                      <?php endif ?>
                      <div align="center">
                        <label style="color:#dc3545;">Grade 12 Card</label>
                      </div>
                  </a>
                  <div align = "center">
                  <?php if($documentstatus['g12_status'] != "approve") :?>
                    <select name="g12_status" id="test" align = "center" class = "form-select-sm"<?= !empty($image_file_record['g12_files']) ? '': 'disabled'?>>
                    <option selected disabled> Select Status</option>
                    <option value = "approve"> Approve </option>
                    <option value = "reject" <?= !empty($image_file_record['g12_files']) ? '': 'selected'?>> Disapprove </option>
                    </select>
                    <?php if(empty($image_file_record['g12_files'])):?>
                      <input type = "hidden" value = "reject" name = "g12_status"/> 
                    <?php endif;?>
                    <?php else:?>
                        <?php if(!empty($documentstatus['g12_status'])):?>
                        <input type = "hidden" value = "approve" name = "g12_status"/>
                        <input type = "text" class = "text-center" value = "Approved" disabled/>  
                        <?php endif;?>
                    <?php endif;?>
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
                  <?php if($documentstatus['psa_nso_status'] != "approve") :?>
                    <select name="psa_nso_status" id="test" align = "center" class = "form-select-sm" <?= !empty($image_file_record['psa_nso_files']) ? '': 'disabled'?>>
                    <option selected disabled> Select Status</option>
                    <option value = "approve"> Approve </option>
                    <option value = "reject" <?= !empty($image_file_record['psa_nso_files']) ? '': 'selected'?>> Disapprove </option>
                    </select>
                    <?php if(empty($image_file_record['psa_nso_files'])):?>
                      <input type = "hidden" value = "reject" name = "psa_nso_status"/> 
                    <?php endif;?>
                    <?php else:?>
                        <?php if(!empty($documentstatus['psa_nso_status'])):?>
                        <input type = "hidden" value = "approve" name = "psa_nso_status"/>
                        <input type = "text" class = "text-center" value = "Approved" disabled/>  
                        <?php endif;?>
                    <?php endif;?>
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
                  <?php if($documentstatus['good_moral_status'] != "approve") :?>
                    <select name="goodmoral_status" id="test" align = "center" class = "form-select-sm" <?= !empty($image_file_record['good_moral_files']) ? '': 'disabled'?>>
                    <option selected disabled> Select Status</option>
                    <option value = "approve"> Approve </option>
                    <option value = "reject"<?= !empty($image_file_record['good_moral_files']) ? '': 'selected'?>> Disapprove </option>
                    </select>
                    <?php if(empty($image_file_record['good_moral_files'])):?>
                      <input type = "hidden" value = "reject" name = "goodmoral_status"/> 
                    <?php endif;?>
                    <?php else:?>
                        <?php if(!empty($documentstatus['good_moral_status'])):?>
                        <input type = "hidden" value = "approve" name = "goodmoral_status"/>
                        <input type = "text" class = "text-center" value = "Approved" disabled/>  
                        <?php endif;?>
                    <?php endif;?>
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
                  <?php if($documentstatus['medical_cert_status'] != "approve") :?>
                    <select name="medical_cert_status" id="test" align = "center" class = "form-select-sm" <?= !empty($image_file_record['medical_cert_files']) ? '': 'disabled'?>>
                    <option selected disabled> Select Status</option>
                    <option value = "approve"> Approve </option>
                    <option value = "reject"<?= !empty($image_file_record['medical_cert_files']) ? '': 'selected'?>> Disapprove </option>
                    </select>
                    <?php if(empty($image_file_record['medical_cert_files'])):?>
                      <input type = "hidden" value = "reject" name = "medical_cert_status"/> 
                    <?php endif;?>
                    <?php else:?>
                        <?php if(!empty($documentstatus['medical_cert_status'])):?>
                        <input type = "hidden" value = "approve" name = "medical_cert_status"/>
                        <input type = "text" class = "text-center" value = "Approved" disabled/>  
                        <?php endif;?>
                    <?php endif;?>
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
                  <?php if($documentstatus['twobytwo_status'] != "approve") :?>
                    <select name="pictwobytwo_status" id="test" align = "center" class = "form-select-sm" <?= !empty($image_file_record['picture_two_by_two_files']) ? '': 'disabled'?>>
                    <option selected disabled> Select Status</option>
                    <option value = "approve"> Approve </option>
                    <option value = "reject"<?= !empty($image_file_record['picture_two_by_two_files']) ? '': 'selected'?>> Disapprove </option>
                    </select>
                    <?php if(empty($image_file_record['picture_two_by_two_files'])):?>
                      <input type = "hidden" value = "reject" name = "pictwobytwo_status"/> 
                    <?php endif;?>
                    <?php else:?>
                        <?php if(!empty($documentstatus['twobytwo_status'])):?>
                        <input type = "hidden" value = "approve" name = "pictwobytwo_status"/>
                        <input type = "text" class = "text-center" value = "Approved" disabled/>  
                        <?php endif;?>
                    <?php endif;?>
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

    
    <div class="card">
              <div class="card-header">
                <h4><b>Admission Edit Upload</b></h4>
                <p style="font-size: 12px;color: red;"><i>
                  Note:
                  <li style="font-size: 12px;color: red;">Please submit the scanned documents required below before submitting the hard copy of the requirements to the School admission office.</li>
                  <li style="font-size: 12px;color: red;">Make sure you have no pending sanctions from the university or else all your document request will be rejected.</li>
                  <li style="font-size: 12px;color: red;">You are required to upload all softcopies of your admission credentials.</li>
                  </i></p>
              </div>
              <form action="<?php echo base_url('admission/student-upload-files-set-documents/'.$student['user_id']); ?>" method="post" enctype="multipart/form-data">
                <div class="card-body">
                  <!-- sar form/PUPCET result -->
                  <div class="mb-3">
                    <label for="formFile1" class="form-label">SAR Form/PUPCET Result:</label>
                    <?php if(empty($studentadmission_files['sar_pupcct_results_files'])) : ?>  
                    <input class="form-control" type="file" name="sar_pupcct_results_files" id="formFile1">
                    <?php else :?>
                    <br>
                    <input class="form-control" type="text" name="sar_pupcct_results_files" id="formFile1" disabled value = "<?=$studentadmission_files['sar_pupcct_results_files']?>">
                    <?php endif; ?>
                  </div>
                  <!-- sar form/PUPCET result -->
                  <!-- f137 -->
                  <div class="mb-3">
                    <label for="formFile2" class="form-label">F137:</label>
                    <?php if(empty($studentadmission_files['f137_files'])) : ?>  
                    <input class="form-control" type="file" name="f137_files" id="formFile2">
                    <?php else :?>
                    <br>
                    <input class="form-control" type="text" name="f137_files" id="formFile2" disabled value = "<?=$studentadmission_files['f137_files']?>">
                    <?php endif; ?>
                  </div>
                  <!-- f137 -->
                  <!-- G10 Card -->
                  <div class="mb-3">
                    <label for="formFile3" class="form-label">Grade 10 Card:</label>
                    <?php if(empty($studentadmission_files['g10_files'])) : ?> 
                    <input class="form-control" type="file" name="g10_files" id="formFile3">
                    <?php else :?>
                    <br>
                    <input class="form-control" type="text" name="g10_files" id="formFile3" disabled value = "<?=$studentadmission_files['g10_files']?>">
                    <?php endif; ?>
                  </div>
                  <!-- G10 Card -->
                

                  <div class="mb-3">
                    <label for="formFile11" class="form-label">Grade 11 Card:</label>
                    <?php if(empty($studentadmission_files['g11_files'])) : ?> 
                    <input class="form-control" type="file" name="g11_files" id="formFile11">
                    <?php else :?>
                    <br>
                    <input class="form-control" type="text" name="g11_files" id="formFile11" disabled value = "<?=$studentadmission_files['g11_files']?>">
                    <?php endif; ?>
                  </div>

                  <div class="mb-3">
                    <label for="formFile11" class="form-label">Grade 12 Card:</label>
                    <?php if(empty($studentadmission_files['g12_files'])) : ?> 
                    <input class="form-control" type="file" name="g12_files" id="formFile12">
                    <?php else :?>
                    <br>
                    <input class="form-control" type="text" name="g12_files" id="formFile11" disabled value = "<?=$studentadmission_files['g12_files']?>">
                    <?php endif; ?>
                  </div>


                  <!-- PSA/NSO -->
                  <div class="mb-3">
                    <label for="formFile4" class="form-label">PSA/NSO Birth Certificate:</label>
                    <?php if(empty($studentadmission_files['psa_nso_files'])) : ?> 
                    <input class="form-control" type="file" name="psa_nso_files" id="formFile4">
                    <?php else :?>
                    <br>
                    <input class="form-control" type="text" name="psa_nso_files" id="formFile4" disabled value = "<?=$studentadmission_files['psa_nso_files']?>">
                    <?php endif; ?>
                  </div>
                  <!-- PSA/NSO -->
                  <!-- Good Moral -->
                  <div class="mb-3">
                    <label for="formFile5" class="form-label">Good Moral:</label>
                    <?php if(empty($studentadmission_files['good_moral_files'])) : ?> 
                    <input class="form-control" type="file" name="good_moral_files" id="formFile5">
                    <?php else :?>
                    <br>
                    <input class="form-control" type="text" name="good_moral_files" id="formFile5" disabled value = "<?=$studentadmission_files['good_moral_files']?>">
                    <?php endif; ?>
                  </div>
                  <!-- Good Moral -->
                  <!-- Medical Clearance -->
                  <div class="mb-3">
                    <label for="formFile6" class="form-label">Medical Clearance:</label>
                    <?php if(empty($studentadmission_files['medical_cert_files'])) : ?> 
                    <input class="form-control" type="file" name="medical_cert_files" id="formFile6">
                    <?php else :?>
                    <br>
                    <input class="form-control" type="text" name="medical_cert_files" id="formFile6" disabled value = "<?=$studentadmission_files['medical_cert_files']?>">
                    <?php endif; ?>
                  </div>
                  <!-- Medical Clearance -->
                  <!-- 2x2 Picture -->
                  <div class="mb-3">
                    <label for="formFile7" class="form-label">2x2 Picture:</label>
                    <?php if(empty($studentadmission_files['picture_two_by_two_files'])) : ?> 
                    <input class="form-control" type="file" name="picture_two_by_two_files" id="formFile7">
                    <?php else :?>
                    <br>
                    <input class="form-control" type="text" name="picture_two_by_two_files" id="formFile6" disabled value = "<?=$studentadmission_files['picture_two_by_two_files']?>">
                    <?php endif; ?>
                  </div>
                  <!-- 2x2 Picture -->
                </div>
                
                <div class="card-footer">
                  <button style="background-color:maroon;color: white;" type="submit" name="btnsavefiles" class="form-control">Save Files</button>
                </div>
              </form> 
            </div>
  </div>
</div>

