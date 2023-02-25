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
                    <label for="formFile4" class="form-label">SAR Form/PUPCET/CAEPUP Result:</label>
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
