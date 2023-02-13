<div class="container" id="content">
  <div class="row">
    <div class="col-md-12">
      <div class="card">
        <div class="card-body">
          <div class="row">
            <div class="col-md-6">
              <h3>Hello, <?=esc($_SESSION['name'])?>!</h3>
              <p style="font-style: italic; font-size: .9em;">Request for a copy of your academic related documents.</p>
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
                      <a href="/requests/new" class="btn" disabl><i class="fas fa-plus"></i> Request document here</a>
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
          <?php if (!empty($studentadmission_files)): ?>
            <?php if (isset($studentadmission_details['admission_status']) == 'rechecking'): ?>
              <div class="card alert alert-warning d-flex align-items-center" role="alert">
                <div>
                  Your documents are being processed for re-checking.... 
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
                      <?php if (!empty($studentadmission_details['sar_pupcct_resultID'])): ?>
                        <input type="checkbox" value="1" name="sar_pupcct_resultID" checked> SAR Form/PUPCCT Results<br>
                      <?php endif ?>
                      <?php if (!empty($studentadmission_details['f137ID'])): ?>
                        <input type="checkbox" value="1" name="f137ID" checked> Form 137<br>
                      <?php endif ?>
                      <?php if (!empty($studentadmission_details['f137ID'])): ?>
                        <input type="checkbox" value="1" name="f137ID" checked> Grade 10 Card<br>
                      <?php endif ?>
                      <?php if (!empty($studentadmission_details['cert_dry_sealID'])): ?>
                        <input type="checkbox" value="1" name="cert_dry_sealID" checked> Grade 11 Card<br>
                      <?php endif ?>
                      <?php if (!empty($studentadmission_details['psa_nsoID'])): ?>
                        <input type="checkbox" value="1" name="psa_nsoID" checked> PSA/NSO Birth Certificate<br>
                      <?php endif ?>
                      <?php if (!empty($studentadmission_details['good_moralID'])): ?>
                        <input type="checkbox" value="1" name="good_moralID" checked> Certification of Good Moral<br>
                      <?php endif ?>
                      <?php if (!empty($studentadmission_details['medical_certID'])): ?>
                        <input type="checkbox" value="1" name="medical_certID" checked> Medical Clearance<br>
                      <?php endif ?>
                      <?php if (!empty($studentadmission_details['picture_two_by_twoID'])): ?>
                        <input type="checkbox" value="1" name="picture_two_by_twoID" checked> 2x2 Picture<br>
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
                      
                  </div>
                </div>
              </div>
              <div class="col-md-4">
                <div class="card" style="height:288px">
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
                      
                  </div>
                </div>
              </div>
              <div class="col-md-4">
                <div class="card"  style="height:288px">
                  <div class="card-header">
                    <h6>Remarks</h6>
                  </div>
                  <div class="card-body">
                      <?php foreach ($studentadmission_remarks as $key => $value): ?>
                        <?php if ($value['admission_status'] != 'complete'): ?>
                          <?php if(!empty($value['sc_true_copy'])): ?>
                            <i class="fas fa-info"></i> <?php echo $value['no_dry_seal']; ?><br>
                          <?php endif ?>
                          <?php if(!empty($value['sc_true_copy'])): ?>
                            <i class="fas fa-info"></i> <?php echo $value['sc_true_copy']; ?><br>
                          <?php endif ?>
                          <?php if(!empty($value['sc_pup_remarks'])): ?>
                            <i class="fas fa-info"></i> <?php echo $value['sc_pup_remarks']; ?><br>
                          <?php endif ?>
                          <?php if(!empty($value['s_one_photocopy'])): ?>
                            <i class="fas fa-info"></i> <?php echo $value['s_one_photocopy']; ?><br>
                          <?php endif ?>
                          <?php if(!empty($value['submit_original'])): ?>
                            <i class="fas fa-info"></i> <?php echo $value['submit_original']; ?><br>
                          <?php endif ?>
                          <?php if(!empty($value['not_submit'])): ?>
                            <i class="fas fa-info"></i> <?php echo $value['not_submit']; ?><br>
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
            <!--.$_SESSION['user_id'] -->
            <form action="<?php echo base_url('studentadmission/rechecking-mydocuments'); ?>" method="post">
                <div align="center">
                  <?php if (isset($studentadmission_details['admission_status']) != 'complete'): ?>
                    <button type="submit" name="btnrechecking" class="btn btn-danger" <?php if (isset($studentadmission_details['admission_status']) == 'rechecking'){echo 'disabled';} ?>>Re-check My Documents</button>
                  <?php endif ?>
                </div>
            </form>
          <?php else: ?>
            <?php if (isset($_SESSION['error_message'])): ?>
              <div class="card alert alert-danger d-flex align-items-center" role="alert">
                <div>
                  <?= $_SESSION['error_message']; ?> 
                </div>
              </div>
            <?php endif ?>
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
                    <input class="form-control" type="file" name="sar_pupcct_results_files" id="formFile1">
                  </div>
                  <!-- sar form/PUPCET result -->
                  <!-- f137 -->
                  <div class="mb-3">
                    <label for="formFile2" class="form-label">F137:</label>
                    <input class="form-control" type="file" name="f137_files" id="formFile2">
                  </div>
                  <!-- f137 -->
                  <!-- f138 -->
                  <div class="mb-3">
                    <label for="formFile3" class="form-label">Grade 10 Card:</label>
                    <input class="form-control" type="file" name="g10_files" id="formFile3">
                  </div>
                  <!-- f138 -->


                  <div class="mb-3">
                    <label for="formFile11" class="form-label">Grade 11 Card:</label>
                    <input class="form-control" type="file" name="g11_files" id="formFile11">
                  </div>

                  <div class="mb-3">
                    <label for="formFile11" class="form-label">Grade 12 Card:</label>
                    <input class="form-control" type="file" name="g12_files" id="formFile12">
                  </div>


                  <!-- PSA/NSO -->
                  <div class="mb-3">
                    <label for="formFile4" class="form-label">PSA/NSO:</label>
                    <input class="form-control" type="file" name="psa_nso_files" id="formFile4">
                  </div>
                  <!-- PSA/NSO -->
                  <!-- Good Moral -->
                  <div class="mb-3">
                    <label for="formFile5" class="form-label">Good Moral:</label>
                    <input class="form-control" type="file" name="good_moral_files" id="formFile5">
                  </div>
                  <!-- Good Moral -->
                  <!-- Medical Clearance -->
                  <div class="mb-3">
                    <label for="formFile6" class="form-label">Medical Clearance:</label>
                    <input class="form-control" type="file" name="medical_cert_files" id="formFile6">
                  </div>
                  <!-- Medical Clearance -->
                  <!-- 2x2 Picture -->
                  <div class="mb-3">
                    <label for="formFile7" class="form-label">2x2 Picture:</label>
                    <input class="form-control" type="file" name="picture_two_by_two_files" id="formFile7">
                  </div>
                  <!-- 2x2 Picture -->
                </div>
                <div class="card-footer">
                  <button style="background-color:maroon;color: white;" type="submit" name="btnsavefiles" class="form-control">Save Files</button>
                </div>
              </form> 
            </div>
          <?php endif ?>
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
