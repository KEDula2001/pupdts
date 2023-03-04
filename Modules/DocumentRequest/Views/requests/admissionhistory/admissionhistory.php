<div class="container" id="content">
  <div class="row">
    <div class="col-md-12">
      <div class="card">
        <div class="card-body">
          <div class="row">
            <div class="col-md-6">
              <h3>Hello, <?=esc($_SESSION['name'])?>!</h3>
              <p style="font-style: italic; font-size: .9em;">Upload all your Admission Credentials here...</p>
            </div>
            <div class="col-md-6">
              <table class="table request">
                <tbody>
                  <tr>
                    <td>
                      <a href="<?php echo base_url('studentadmission/admission-gallery/'.$_SESSION['user_id']); ?>" class="btn" disabled>Credentials Gallery</a>
                    </td>
                    <td>
                      <a href="<?php echo base_url('studentadmission/view-admission-history/'.$_SESSION['user_id']); ?>" class="btn" disabled> Admission History</a>
                    </td>
                    <td>
                      <a href="/requests/new" class="btn"><i class="fas fa-plus"></i> Request document here</a>
                    </td>
                  </tr>
                </tbody>
              </table>
            </div>
            <hr>
          </div>


          
          <?php if (isset($_SESSION['success_message'])): ?>
              <div class="card alert alert-success d-flex align-items-center" role="alert">
                <div>
                  <?= $_SESSION['success_message']; ?> 
                </div>
              </div>
            <?php endif ?>
          
            <?php if (isset($_SESSION['error_message'])): ?>
              <div class="card alert alert-danger d-flex align-items-center" role="alert">
                <div>
                  <?= $_SESSION['error_message']; ?> 
                </div>
              </div>
            <?php endif ?>

            <?php if (!empty($studentadmission_files)): ?>
            <?php if ($studentadmission_details['admission_status'] == 'rechecking'): ?>
              <div class="card alert alert-warning d-flex align-items-center" role="alert">
                <div>
                  Your Documents is being process for rechecking.... 
                </div>
              </div>
            <?php endif ?>
            <div class="row">
              <div class="col-md-4">
                <div class="card">
                  <div class="card-header">
                    <h6>Submitted</h6>
                  </div>
                  <div class="card-body">
                      <?php if (!empty($studentadmission_files['sar_pupcct_results_files'])): ?>
                        <input type="checkbox" value="1" name="sar_pupcct_resultID" checked> SAR Form/PUPCCT Results<br>
                      <?php endif ?>
                      <?php if (!empty($studentadmission_files['f137_files'])): ?>
                        <input type="checkbox" value="1" name="f137ID" checked> F137<br>
                      <?php endif ?>
                      <?php if (!empty($studentadmission_files['g10_files'])): ?>
                        <input type="checkbox" value="1" name="f137ID" checked> Grade 10 Report Card<br>
                      <?php endif ?>
                      <?php if (!empty($studentadmission_files['g11_files'])): ?>
                        <input type="checkbox" value="1" name="psa_nsoID" checked> Grade 11 Report Card<br>
                      <?php endif ?>
                      <?php if (!empty($studentadmission_files['g12_files'])): ?>
                        <input type="checkbox" value="1" name="good_moralID" checked> Grade 12 Report Card<br>
                      <?php endif ?>
                      <?php if (!empty($studentadmission_files['psa_nso_files'])): ?>
                        <input type="checkbox" value="1" name="medical_certID" checked> PSA/NSO Birth Certificate<br>
                      <?php endif ?>
                      <?php if (!empty($studentadmission_files['good_moral_files'])): ?>
                        <input type="checkbox" value="1" name="good_moral_files" checked>Certificate of Good Moral<br>
                      <?php endif ?>
                      <?php if (!empty($studentadmission_files['medical_cert_files'])): ?>
                        <input type="checkbox" value="1" name="picture_two_by_twoID" checked> Medical Certificate<br>
                      <?php endif ?>
                      <?php if (!empty($studentadmission_files['picture_two_by_two_files'])): ?>
                        <input type="checkbox" value="1" name="picture_two_by_twoID" checked> 2x2 Photo (Name tag below) <br>
                      <?php endif ?>
                      <hr>

                      
                      <label>Other Documents:</label><br>
                      <?php if (!empty($studentadmission_details['nc_non_enrollmentID'])): ?>
                        <input type="checkbox" value="1" name="nc_non_enrollmentID" checked> Notarized Cert of Non-enrollment<br>
                      <?php endif ?>
                      <?php if (!empty($studentadmission_details['coc_hs_shsID'])): ?>
                        <input type="checkbox" value="1" name="coc_hs_shsID" checked> COC (HS/SHS)<br>
                      <?php endif ?>
                      <?php if (!empty($studentadmission_details['ac_pept_alsID'])): ?>
                        <input type="checkbox" value="1" name="ac_pept_alsID" checked> Authenticated Copy PEPT/ALS<br>
                      <?php endif ?>
                      <?php if (!empty($studentadmission_details['cert_dry_sealID'])): ?>
                        <input type="checkbox" value="1" name="ac_pept_alsID" checked> Authenticated Copy PEPT/ALS<br>
                      <?php endif ?>
                      
                      <hr>
                      <label>Graduation Requirements:</label><br>
                      <?php if (!empty($studentadmission_details['app_grad'])): ?>
                        <input type="checkbox" value="1" name="app_grad" checked> Application for Graduation<br>
                      <?php endif ?>
                      <?php if (!empty($studentadmission_details['or_app_grad'])): ?>
                        <input type="checkbox" value="1" name="or_app_grad" checked> O.R. of Application of Graduation<br>
                      <?php endif ?>
                      <?php if (!empty($studentadmission_details['latest_regi'])): ?>
                        <input type="checkbox" value="1" name="latest_regi" checked> Latest Registration Card<br>
                      <?php endif ?>
                      <?php if (!empty($studentadmission_details['course_curri'])): ?>
                        <input type="checkbox" value="1" name="course_curri" checked> Course Curriculum<br>
                      <?php endif ?>
                      <?php if (!empty($studentadmission_details['cert_candi'])): ?>
                        <input type="checkbox" value="1" name="cert_candi" checked> Certificate of Candidacy<br>
                      <?php endif ?>
                      <?php if (!empty($studentadmission_details['gen_clear'])): ?>
                        <input type="checkbox" value="1" name="gen_clear" checked> General Clearance<br>
                      <?php endif ?>
                      <?php if (!empty($studentadmission_details['or_grad_fee'])): ?>
                        <input type="checkbox" value="1" name="or_grad_fee" checked> O.R. of Graduation Fees<br>
                      <?php endif ?>
                      <?php if (!empty($studentadmission_details['cert_confer'])): ?>
                        <input type="checkbox" value="1" name="cert_confer" checked> Certificate of Conferment<br>
                      <?php endif ?>
                      <?php if (!empty($studentadmission_details['schoolid'])): ?>
                        <input type="checkbox" value="1" name="schoolid" checked> PUP Taguig School ID<br>
                      <?php endif ?>
                      <?php if (!empty($studentadmission_details['honor_dis'])): ?>
                        <input type="checkbox" value="1" name="honor_dis" checked> PUP Taguig Honorable Dismissal<br>
                      <?php endif ?>
                      <?php if (!empty($studentadmission_details['trans_rec'])): ?>
                        <input type="checkbox" value="1" name="trans_rec" checked> PUP Taguig Trancript of Record<br>
                      <?php endif ?>
                  </div>
                </div>
              </div>
              <div class="col-md-4">
                <div class="card">
                  <div class="card-header">
                    <h6>Not Submitted</h6>
                  </div>
                  <div class="card-body">
                  <?php if (empty($studentadmission_details['sar_pupcct_resultID'])): ?>
                        <i class="fas fa-times" style="color:red;"></i> SAR Form/PUPCCT Results<br>
                      <?php endif ?>
                      <?php if (empty($studentadmission_details['f137ID'])): ?>
                        <i class="fas fa-times" style="color:red;"></i> F137<br>
                      <?php endif ?>
                      <?php if (empty($studentadmission_details['f137ID'])): ?>
                        <i class="fas fa-times" style="color:red;"></i>Grade 10 Card<br>
                      <?php endif ?>
                      <?php if (empty($studentadmission_details['cert_dry_sealID'])): ?>
                        <i class="fas fa-times" style="color:red;"></i> Grade 11 Card<br>
                      <?php endif ?>
                      <?php if (empty($studentadmission_details['psa_nsoID'])): ?>
                        <i class="fas fa-times" style="color:red;"></i> PSA/NSO<br>
                      <?php endif ?>
                      <?php if (empty($studentadmission_details['good_moralID'])): ?>
                        <i class="fas fa-times" style="color:red;"></i> Certification of Good Moral<br>
                      <?php endif ?>
                      <?php if (empty($studentadmission_details['medical_certID'])): ?>
                        <i class="fas fa-times" style="color:red;"></i> Medical Clearance<br>
                      <?php endif ?>
                      <?php if (empty($studentadmission_details['picture_two_by_twoID'])): ?>
                        <i class="fas fa-times" style="color:red;"></i> 2x2 Picture<br>
                      <?php endif ?>
                      <?php if (empty($studentadmission_details['certificate_of_completion'])): ?>
                        <i class="fas fa-times" style="color:red;"></i> Certificate of Completion<br>
                      <?php endif ?>
                      <hr>
                      <label>Other Documents:</label><br>
                      <?php if (empty($studentadmission_details['nc_non_enrollmentID'])): ?>
                        <i class="fas fa-times" style="color:red;"></i> Notarized Cert of Non-enrollment<br>
                      <?php endif ?>
                      <?php if (empty($studentadmission_details['coc_hs_shsID'])): ?>
                        <i class="fas fa-times" style="color:red;"></i> COC (HS/SHS)<br>
                      <?php endif ?>
                      <?php if (empty($studentadmission_details['ac_pept_alsID'])): ?>
                        <i class="fas fa-times" style="color:red;"></i> Authenticated Copy PEPT/ALS<br>
                      <?php endif ?>
                        <hr>
                      <label>Graduation Requirements:</label><br>
                      <?php if (empty($studentadmission_details['app_grad'])): ?>
                        <i class="fas fa-times" style="color:red;"></i> Application for Graduation<br>
                      <?php endif ?>
                      <?php if (empty($studentadmission_details['or_app_grad'])): ?>
                        <i class="fas fa-times" style="color:red;"></i> O.R. of Application of Graduation<br>
                      <?php endif ?>
                      <?php if (empty($studentadmission_details['latest_regi'])): ?>
                        <i class="fas fa-times" style="color:red;"></i> Latest Registration Card<br>
                      <?php endif ?>
                      <?php if (empty($studentadmission_details['course_curri'])): ?>
                        <i class="fas fa-times" style="color:red;"></i> Course Curriculum<br>
                      <?php endif ?>
                      <?php if (empty($studentadmission_details['cert_candi'])): ?>
                        <i class="fas fa-times" style="color:red;"></i> Certificate of Candidacy<br>
                      <?php endif ?>
                      <?php if (empty($studentadmission_details['gen_clear'])): ?>
                        <i class="fas fa-times" style="color:red;"></i> General Clearance<br>
                      <?php endif ?>
                      <?php if (empty($studentadmission_details['or_grad_fee'])): ?>
                        <i class="fas fa-times" style="color:red;"></i> O.R. of Graduation Fees<br>
                      <?php endif ?>
                      <?php if (empty($studentadmission_details['cert_confer'])): ?>
                        <i class="fas fa-times" style="color:red;"></i> Certificate of Conferment<br>
                      <?php endif ?>
                      <?php if (empty($studentadmission_details['schoolid'])): ?>
                        <i class="fas fa-times" style="color:red;"></i> PUP Taguig School ID<br>
                      <?php endif ?>
                      <?php if (empty($studentadmission_details['honor_dis'])): ?>
                        <i class="fas fa-times" style="color:red;"></i> PUP Taguig Honorable Dismissal<br>
                      <?php endif ?>
                      <?php if (empty($studentadmission_details['trans_rec'])): ?>
                        <i class="fas fa-times" style="color:red;"></i> PUP Taguig Trancript of Record<br>
                      <?php endif ?>
                      
                  </div>
                </div>
              </div>
              <div class="col-md-4">
                <div class="card">
                  <div class="card-header">
                  <h6>Remarks</h6>
                    <div class="card-body">
                      <?php foreach ($studentadmission_remarks as $key => $value): ?>
                        <?php if ($value['admission_status'] != 'complete'): ?>
                          <?php if(!empty($value['submit_original_sarform'])): ?>
                             <?php echo $value['submit_original_sarform']; ?> <br>
                          <?php endif ?>
                          <?php if(!empty($value['s_one_photocopy_sarform'])): ?>
                             <?php echo $value['s_one_photocopy_sarform']; ?> <br>
                          <?php endif ?>
                          <?php if(!empty($value['no_dry_sealf137'])): ?>
                             <?php echo $value['no_dry_sealf137']; ?> <br>
                          <?php endif ?>
                          <?php if(!empty($value['submit_original_f137'])): ?>
                             <?php echo $value['submit_original_f137']; ?> <br>
                          <?php endif ?>
                          <?php if(!empty($value['no_dry_sealgrade10'])): ?>
                             <?php echo $value['no_dry_sealgrade10']; ?> <br>
                          <?php endif ?>
                          <?php if(!empty($value['s_one_photocopy_grade10'])): ?>
                             <?php echo $value['s_one_photocopy_grade10']; ?> <br>
                          <?php endif ?>
                          <?php if(!empty($value['submit_original_grade10'])): ?>
                             <?php echo $value['submit_original_grade10']; ?> <br>
                          <?php endif ?>
                          <?php if(!empty($value['no_dry_sealgrade11'])): ?>
                             <?php echo $value['no_dry_sealgrade11']; ?> <br>
                          <?php endif ?>
                          <?php if(!empty($value['s_one_photocopy_grade11'])): ?>
                             <?php echo $value['s_one_photocopy_grade11']; ?> <br>
                          <?php endif ?>
                          <?php if(!empty($value['submit_original_grade11'])): ?>
                             <?php echo $value['submit_original_grade11']; ?> <br>
                          <?php endif ?>
                          <?php if(!empty($value['no_dry_sealgrade12'])): ?>
                             <?php echo $value['no_dry_sealgrade12']; ?> <br>
                          <?php endif ?>
                          <?php if(!empty($value['s_one_photocopy_grade12'])): ?>
                             <?php echo $value['s_one_photocopy_grade12']; ?> <br>
                          <?php endif ?>
                          <?php if(!empty($value['submit_original_grade12'])): ?>
                             <?php echo $value['submit_original_grade12']; ?> <br>
                          <?php endif ?>
                          <?php if(!empty($value['s_one_photocopy_psa'])): ?>
                             <?php echo $value['s_one_photocopy_psa']; ?> <br>
                          <?php endif ?>
                          <?php if(!empty($value['submit_original_psa'])): ?>
                             <?php echo $value['submit_original_psa']; ?> <br>
                          <?php endif ?>
                          <?php if(!empty($value['no_dry_sealgoodmoral'])): ?>
                             <?php echo $value['no_dry_sealgoodmoral']; ?> <br>
                          <?php endif ?>
                          <?php if(!empty($value['s_one_photocopy_goodmoral'])): ?>
                             <?php echo $value['s_one_photocopy_goodmoral']; ?> <br>
                          <?php endif ?>
                          <?php if(!empty($value['submit_original_goodmoral'])): ?>
                             <?php echo $value['submit_original_goodmoral']; ?> <br>
                          <?php endif ?>
                          <?php if(!empty($value['submit_original_medcert'])): ?>
                             <?php echo $value['submit_original_medcert']; ?> <br>
                          <?php endif ?>
                          <?php if(!empty($value['submit_twobytwo'])): ?>
                             <?php echo $value['submit_twobytwo']; ?> <br>
                          <?php endif ?>
                          <?php if(!empty($value['not_submitted_sarform'])): ?>
                             <?php echo $value['not_submitted_sarform']; ?> <br>
                          <?php endif ?>
                          <?php if(!empty($value['not_submitted_f137'])): ?>
                             <?php echo $value['not_submitted_f137']; ?> <br>
                          <?php endif ?>
                          <?php if(!empty($value['not_submitted_grade10'])): ?>
                             <?php echo $value['not_submitted_grade10']; ?> <br>
                          <?php endif ?>
                          <?php if(!empty($value['not_submitted_grade11'])): ?>
                             <?php echo $value['not_submitted_grade11']; ?> <br>
                          <?php endif ?>
                          <?php if(!empty($value['not_submitted_grade12'])): ?>
                             <?php echo $value['not_submitted_grade12']; ?> <br>
                          <?php endif ?>
                          <?php if(!empty($value['not_submitted_psa'])): ?>
                             <?php echo $value['not_submitted_psa']; ?> <br>
                          <?php endif ?>
                          <?php if(!empty($value['not_submitted_goodmoral'])): ?>
                             <?php echo $value['not_submitted_goodmoral']; ?> <br>
                          <?php endif ?>
                          <?php if(!empty($value['not_submitted_medcert'])): ?>
                             <?php echo $value['not_submitted_medcert']; ?> <br>
                          <?php endif ?>
                          <?php if(!empty($value['ctc_grade10'])): ?>
                             <?php echo $value['ctc_grade10']; ?> <br>
                          <?php endif ?>
                          <?php if(!empty($value['ctc_grade11'])): ?>
                             <?php echo $value['ctc_grade11']; ?><br>
                          <?php endif ?>
                          <?php if(!empty($value['ctc_grade12'])): ?>
                             <?php echo $value['ctc_grade12']; ?> <br>
                          <?php endif ?>
                          <?php if(!empty($value['submit_photocopy_coc'])): ?>
                             <?php echo $value['submit_photocopy_coc']; ?> <small style="color: gray"></small><br>
                          <?php endif ?>
                          <hr>
                          <label>Other Remarks:</label><br>
                          <?php if(!empty($value['other_remarks'])): ?>
                            <i class="fas fa-info"></i> <?php echo $value['other_remarks']; ?><br>
                          <?php endif ?>
                        <?php else: ?>
                          <div class="card alert alert-success d-flex align-items-center" role="alert">
                            <div>
                              Completed
                            </div>
                          </div>
                        <?php endif ?>
                      <?php endforeach ?>
                  </div>
                </div>
              </div>
            </div>

          
          <form action="<?php echo base_url('studentadmission/rechecking-mydocuments/'.$_SESSION['user_id']); ?>" method="post">
                <div align="center">
                  <?php if ($studentadmission_details['admission_status'] != 'complete'): ?>
                    <button type="submit" name="btnrechecking" class="btn btn-danger" <?php if ($studentadmission_details['admission_status'] == 'rechecking'){echo 'disabled';} ?>>Re-check My Documents</button>
                  <?php endif ?>
                </div>
            </form>
            <?php endif ?>
            <br><br><br>



            <div class="card">
              <div class="card-header">
                <h4><b>Requirements Needed!</b></h4>
                <p style="font-size: 12px;color: red;"><i>* Note: Please submit the scanned documents required below before submitting the hard copy of the requirements to the School admission office.</i></p>
              </div>
              <form action="<?php echo base_url('admission/student-upload-files-set/'.$_SESSION['user_id']); ?>" method="post" enctype="multipart/form-data">
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
      <div class="card-footer">
          <div class="row">
            <div class="col-md-12">
              <span class="text-muted">
                <strong>REMINDER:</strong>
                <p>
                  <ul class="fst-italic">
                    <li>Requesting of documents should be made during office hours. (Weekdays from 8:00 AM - 5:00 PM only)</li>
                    <li>Make sure that your information and requests are correct before submitting.</li>
                    <li>You may still cancel your requested document if your application is not been approved by the Registrar.</li>
                    <li>Once a request has been submitted, you will be unable to request another document until your requested document is complete.</li>
                  </ul>
                </p>
              </span>
            </div>
          </div>
        </div>
    </div>
  </div>
</div>
