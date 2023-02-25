
<div class="container" id="content">
  <div class="row">
    <div class="col-md-12">
      <div class="card">
        <div class="card-body">
          <div class="row">
            <div class="col-md-6">
              <h3>Hello, <?=esc($_SESSION['name'])?>!</h3>
            </div>
            <div class="col-md-6">
              <table class="table request">
                <tbody>
                  <tr>
                    <td>
                      <a href="<?php echo base_url('studentadmission/admission-gallery/'.$_SESSION['user_id']); ?>" class="btn <?=empty($requests) ? '': 'disabled'?>" disabled>Credentials Gallery</a>
                    </td>
                    <td>
                      <a href="<?php echo base_url('studentadmission/view-admission-history/'.$_SESSION['user_id']); ?>" class="btn <?=empty($requests) ? '': 'disabled'?>" disabled> Admission History</a>
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
          
          <div class="row">
            <div class="col-12">
              <h3 class="page-title">Admission Files</h3>
              <div class="row">
                  <a href="<?php echo base_url('uploads/'.$studentadmission_files['sar_pupcct_results_files']); ?>" data-toggle="lightbox" data-gallery="example-gallery" class="col-lg-3 col-md-4 col-6 my-3" style="text-decoration: none;">
                      <?php if (!empty($studentadmission_files['sar_pupcct_results_files'])): ?>
                        <img src="<?php echo base_url('uploads/'.$studentadmission_files['sar_pupcct_results_files']); ?>" class="img-fluid card">
                      <?php else: ?>
                        <h3 align="center">-No Files-</h3>
                      <?php endif ?>
                      <div align="center">
                        <label style="color:#dc3545;">SAR Form/PUPCCT Results</label>
                        <br>
                        <label class = "label label-sucess fw-bold"><?esc($studentadmission_status['sar_pupcet_result_status'])?> STATUS </label>
                      </div>
                  </a>
                  <a href="<?php echo base_url('uploads/'.$studentadmission_files['f137_files']); ?>" data-toggle="lightbox" data-gallery="example-gallery" class="col-lg-3 col-md-4 col-6 my-3" style="text-decoration: none;">
                      <?php if (!empty($studentadmission_files['f137_files'])): ?>
                        <img src="<?php echo base_url('uploads/'.$studentadmission_files['f137_files']); ?>" class="img-fluid card">
                      <?php else: ?>
                        <h3 align="center">-No Files-</h3>
                      <?php endif ?>
                      <div align="center">
                        <label style="color:#dc3545;">Form 137</label>
                        <br>
                        <label class = "label label-sucess fw-bold">STATUS</label>
                      </div>
                  </a>
                  <a href="<?php echo base_url('uploads/'.$studentadmission_files['g10_files']); ?>" data-toggle="lightbox" data-gallery="example-gallery" class="col-lg-3 col-md-4 col-6 my-3" style="text-decoration: none;">
                      <?php if (!empty($studentadmission_files['g10_files'])): ?>
                        <img src="<?php echo base_url('uploads/'.$studentadmission_files['g10_files']); ?>" class="img-fluid card">
                      <?php else: ?>
                        <h3 align="center">-No Files-</h3>
                      <?php endif ?>
                      <div align="center">
                        <label style="color:#dc3545;">Grade 10 Card</label>
                        <br>
                        <label class = "label label-sucess fw-bold">STATUS</label>
                      </div>
                  </a>
                  <a href="<?php echo base_url('uploads/'.$studentadmission_files['g11_files']); ?>" data-toggle="lightbox" data-gallery="example-gallery" class="col-lg-3 col-md-4 col-6 my-3" style="text-decoration: none;">
                      <?php if (!empty($studentadmission_files['g11_files'])): ?>
                        <img src="<?php echo base_url('uploads/'.$studentadmission_files['g11_files']); ?>" class="img-fluid card">
                      <?php else: ?>
                        <h3 align="center">-No Files-</h3>
                      <?php endif ?>
                      <div align="center">
                        <label style="color:#dc3545;">Grade 11 Card</label>
                        <br>
                        <label class = "label label-sucess fw-bold">STATUS</label>
                      </div>
                  </a>
                  <a href="<?php echo base_url('uploads/'.$studentadmission_files['g12_files']); ?>" data-toggle="lightbox" data-gallery="example-gallery" class="col-lg-3 col-md-4 col-6 my-3" style="text-decoration: none;">
                      <?php if (!empty($studentadmission_files['g12_files'])): ?>
                        <img src="<?php echo base_url('uploads/'.$studentadmission_files['g12_files']); ?>" class="img-fluid card">
                      <?php else: ?>
                        <h3 align="center">-No Files-</h3>
                      <?php endif ?>
                      <div align="center">
                        <label style="color:#dc3545;">Grade 12 Card</label>
                        <br>
                        <label class = "label label-sucess fw-bold">STATUS</label>
                      </div>
                  </a>
                  <a href="<?php echo base_url('uploads/'.$studentadmission_files['psa_nso_files']); ?>" data-toggle="lightbox" data-gallery="example-gallery" class="col-lg-3 col-md-4 col-6 my-3" style="text-decoration: none;">
                      <?php if (!empty($studentadmission_files['psa_nso_files'])): ?>
                        <img src="<?php echo base_url('uploads/'.$studentadmission_files['psa_nso_files']); ?>" class="img-fluid card">
                      <?php else: ?>
                        <h3 align="center">-No Files-</h3>
                      <?php endif ?>
                      <div align="center">
                        <label style="color:#dc3545;">PSA/NSO</label>
                        <br>
                        <label class = "label label-sucess fw-bold">STATUS</label>
                      </div>
                  </a>
                  <a href="<?php echo base_url('uploads/'.$studentadmission_files['good_moral_files']); ?>" data-toggle="lightbox" data-gallery="example-gallery" class="col-lg-3 col-md-4 col-6 my-3" style="text-decoration: none;">
                      <?php if (!empty($studentadmission_files['good_moral_files'])): ?>
                        <img src="<?php echo base_url('uploads/'.$studentadmission_files['good_moral_files']); ?>" class="img-fluid card">
                      <?php else: ?>
                        <h3 align="center">-No Files-</h3>
                      <?php endif ?>
                      <div align="center">
                        <label style="color:#dc3545;">Certification of Good Moral</label>
                        <br>
                        <label class = "label label-sucess fw-bold">STATUS</label>
                      </div>
                  </a>
                  <a href="<?php echo base_url('uploads/'.$studentadmission_files['medical_cert_files']); ?>" data-toggle="lightbox" data-gallery="example-gallery" class="col-lg-3 col-md-4 col-6 my-3" style="text-decoration: none;">
                      <?php if (!empty($studentadmission_files['medical_cert_files'])): ?>
                        <img src="<?php echo base_url('uploads/'.$studentadmission_files['medical_cert_files']); ?>" class="img-fluid card">
                      <?php else: ?>
                        <h3 align="center">-No Files-</h3>
                      <?php endif ?>
                      <div align="center">
                        <label style="color:#dc3545;">Medical Clearance</label>
                        <br>
                        <label class = "label label-sucess fw-bold">STATUS</label>
                      </div>
                  </a>
                  <a href="<?php echo base_url('uploads/'.$studentadmission_files['picture_two_by_two_files']); ?>" data-toggle="lightbox" data-gallery="example-gallery" class="col-lg-3 col-md-4 col-6 my-3" style="text-decoration: none;">
                      <?php if (!empty($studentadmission_files['picture_two_by_two_files'])): ?>
                        <img src="<?php echo base_url('uploads/'.$studentadmission_files['picture_two_by_two_files']); ?>" class="img-fluid card">
                      <?php else: ?>
                        <h3 align="center">-No Files-</h3>
                      <?php endif ?>
                      <div align="center">
                        <label style="color:#dc3545;">2x2 Picture</label>
                        <br>
                        <label class = "label label-sucess fw-bold">STATUS</label>
                      </div>
                  </a>
              </div>
            </div>
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
