
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
                      <a href="<?php echo base_url('studentadmission/view-admission-history/'.$_SESSION['user_id']); ?>" class="btn <?=empty($requests) ? '': 'disabled'?>" disabled> Credentials Record</a>
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
                  <?php if(!empty($studentadmission_files['sar_pupcct_results_files'])): ?>
                      <a href="<?php echo base_url('uploads/'.$studentadmission_files['sar_pupcct_results_files']); ?>" data-toggle="lightbox" data-gallery="example-gallery" class="col-lg-3 col-md-4 col-6 my-3" style="text-decoration: none;">
                          <?php if (!empty($studentadmission_files['sar_pupcct_results_files'])): ?>
                            <img src="<?php echo base_url('uploads/'.$studentadmission_files['sar_pupcct_results_files']); ?>" class="img-fluid card">
                          <?php else: ?>
                            <h3 align="center">-No Files-</h3>
                          <?php endif ?>
                          <div align="center">
                            <label style="color:#dc3545;">SAR Form/PUPCCT Results</label>
                            <br>
                            <label class = "label label-sucess fw-bold"><?=$studentadmission_files['sar_pupcct_results_files'] != null ? ucwords(esc(isset($studentadmission_status['sar_pupcet_result_status']))) : 'No Status'?></label>
                            
                          </div>
                      </a>
                  <?php else: ?>
                    <a href="<?php echo base_url('uploads/'.isset($studentadmission_files['sar_pupcct_results_files'])); ?>" data-toggle="lightbox" data-gallery="example-gallery" class="col-lg-3 col-md-4 col-6 my-3" style="text-decoration: none;">
                    <h3 align = "center">No File </h3>
                    <div align = "center">
                    <label style="color:#dc3545;" class = "text-center">PUPCET/CAEPUP Result</label>
                  </div>
                  </a>
                  <?php endif ?>
                  <?php if(!empty($studentadmission_files['f137_files'])): ?>
                      <a href="<?php echo base_url('uploads/'.$studentadmission_files['f137_files']); ?>" data-toggle="lightbox" data-gallery="example-gallery" class="col-lg-3 col-md-4 col-6 my-3" style="text-decoration: none;">
                          <?php if (!empty($studentadmission_files['f137_files'])): ?>
                            <img src="<?php echo base_url('uploads/'.$studentadmission_files['f137_files']); ?>" class="img-fluid card">
                          <?php else: ?>
                            <h3 align="center">-No Files-</h3>
                          <?php endif ?>
                          <div align="center">
                            <label style="color:#dc3545;">Form 137</label>
                            <br>
                            <label class = "label label-sucess fw-bold"><?=!empty($studentadmission_files['f137_files']) ? ucwords(esc(isset($studentadmission_status['f137_status']))) : 'No Status'?></label>
                          </div>
                      </a>
                  <?php else: ?>
                    <a href="<?php echo base_url('uploads/'.isset($studentadmission_files['f137_files'])); ?>" data-toggle="lightbox" data-gallery="example-gallery" class="col-lg-3 col-md-4 col-6 my-3" style="text-decoration: none;">
                    <h3 align = "center">No File </h3>
                    <div align = "center">
                    <label style="color:#dc3545;" class = "text-center">Form 137</label>
                  </div>
                  </a>
                  <?php endif ?>
                  <?php if(!empty($studentadmission_files['g10_files'])): ?>
                      <a href="<?php echo base_url('uploads/'.isset($studentadmission_files['g10_files'])); ?>" data-toggle="lightbox" data-gallery="example-gallery" class="col-lg-3 col-md-4 col-6 my-3" style="text-decoration: none;">
                          <?php if (!empty($studentadmission_files['g10_files'])): ?>
                            <img src="<?php echo base_url('uploads/'.$studentadmission_files['g10_files']); ?>" class="img-fluid card">
                          <?php else: ?>
                            <h3 align="center">-No Files-</h3>
                          <?php endif ?>
                          <div align="center">
                            <label style="color:#dc3545;">Grade 10 Card</label>
                            <br>
                            <label class = "label label-sucess fw-bold"><?=!empty($studentadmission_files['g10_files']) ? ucwords(esc(isset($studentadmission_status['g10_status']))) : 'No Status'?></label>
                          </div>
                      </a>
                  <?php else: ?>
                    <a href="<?php echo base_url('uploads/'.isset($studentadmission_files['g10_files'])); ?>" data-toggle="lightbox" data-gallery="example-gallery" class="col-lg-3 col-md-4 col-6 my-3" style="text-decoration: none;">
                    <h3 align = "center">No File </h3>
                    <div align = "center">
                    <label style="color:#dc3545;" class = "text-center">Grade 10 Report Card</label>
                  </div>
                  </a>
                  <?php endif ?>
                  <?php if(!empty($studentadmission_files['g11_files'])): ?>
                      <a href="<?php echo base_url('uploads/'.$studentadmission_files['g11_files']); ?>" data-toggle="lightbox" data-gallery="example-gallery" class="col-lg-3 col-md-4 col-6 my-3" style="text-decoration: none;">
                          <?php if (!empty($studentadmission_files['g11_files'])): ?>
                            <img src="<?php echo base_url('uploads/'.$studentadmission_files['g11_files']); ?>" class="img-fluid card">
                          <?php else: ?>
                            <h3 align="center">-No Files-</h3>
                          <?php endif ?>
                          <div align="center">
                            <label style="color:#dc3545;">Grade 11 Card</label>
                            <br>
                            <label class = "label label-sucess fw-bold"><?=!empty($studentadmission_files['g11_files']) ? ucwords(esc(isset($studentadmission_status['g11_status']))) : 'No Status'?></label>
                          </div>
                      </a>
                  <?php else: ?>
                    <a href="<?php echo base_url('uploads/'.isset($studentadmission_files['g11_files'])); ?>" data-toggle="lightbox" data-gallery="example-gallery" class="col-lg-3 col-md-4 col-6 my-3" style="text-decoration: none;">
                    <h3 align = "center">No File </h3>
                    <div align = "center">
                    <label style="color:#dc3545;" class = "text-center">Grade 11 Report Card</label>
                  </div>
                  </a>
                  <?php endif ?>
                  <?php if(!empty($studentadmission_files['g12_files'])): ?>
                      <a href="<?php echo base_url('uploads/'.$studentadmission_files['g12_files']); ?>" data-toggle="lightbox" data-gallery="example-gallery" class="col-lg-3 col-md-4 col-6 my-3" style="text-decoration: none;">
                          <?php if (!empty($studentadmission_files['g12_files'])): ?>
                            <img src="<?php echo base_url('uploads/'.$studentadmission_files['g12_files']); ?>" class="img-fluid card">
                          <?php else: ?>
                            <h3 align="center">-No Files-</h3>
                          <?php endif ?>
                          <div align="center">
                            <label style="color:#dc3545;">Grade 12 Card</label>
                            <br>
                            <label class = "label label-sucess fw-bold"><?=!empty($studentadmission_files['g12_files']) ? ucwords(esc(isset($studentadmission_status['g12_status']))) : 'No Status'?></label>
                          </div>
                      </a>
                  <?php else: ?>
                    <a href="<?php echo base_url('uploads/'.isset($studentadmission_files['g12_files'])); ?>" data-toggle="lightbox" data-gallery="example-gallery" class="col-lg-3 col-md-4 col-6 my-3" style="text-decoration: none;">
                    <h3 align = "center">No File </h3>
                    <div align = "center">
                    <label style="color:#dc3545;" class = "text-center">Grade 12 Report Card</label>
                  </div>
                  </a>
                  <?php endif ?>
                  <?php if(!empty($studentadmission_files['psa_nso_files'])): ?>
                      <a href="<?php echo base_url('uploads/'.$studentadmission_files['psa_nso_files']); ?>" data-toggle="lightbox" data-gallery="example-gallery" class="col-lg-3 col-md-4 col-6 my-3" style="text-decoration: none;">
                          <?php if (!empty($studentadmission_files['psa_nso_files'])): ?>
                            <img src="<?php echo base_url('uploads/'.$studentadmission_files['psa_nso_files']); ?>" class="img-fluid card">
                          <?php else: ?>
                            <h3 align="center">-No Files-</h3>
                          <?php endif ?>
                          <div align="center">
                            <label style="color:#dc3545;">PSA/NSO Birth Certificate</label>
                            <br>
                            <label class = "label label-sucess fw-bold"><?=!empty($studentadmission_files['psa_nso_files']) ? ucwords(esc(isset($studentadmission_status['psa_nso_status']))) : 'No Status'?></label>
                          </div>
                      </a>
                  <?php else: ?>
                    <a href="<?php echo base_url('uploads/'.isset($studentadmission_files['psa_nso_files'])); ?>" data-toggle="lightbox" data-gallery="example-gallery" class="col-lg-3 col-md-4 col-6 my-3" style="text-decoration: none;">
                    <h3 align = "center">No File </h3>
                    <div align = "center">
                    <label style="color:#dc3545;" class = "text-center">PSA/NSO Birth Certificate</label>
                  </div>
                  </a>
                  <?php endif ?>
                  <?php if(!empty($studentadmission_files['good_moral_files'])): ?>
                      <a href="<?php echo base_url('uploads/'.$studentadmission_files['good_moral_files']); ?>" data-toggle="lightbox" data-gallery="example-gallery" class="col-lg-3 col-md-4 col-6 my-3" style="text-decoration: none;">
                          <?php if (!empty($studentadmission_files['good_moral_files'])): ?>
                            <img src="<?php echo base_url('uploads/'.$studentadmission_files['good_moral_files']); ?>" class="img-fluid card">
                          <?php else: ?>
                            <h3 align="center">-No Files-</h3>
                          <?php endif ?>
                          <div align="center">
                            <label style="color:#dc3545;">Certification of Good Moral</label>
                            <br>
                            <label class = "label label-sucess fw-bold"><?=!empty($studentadmission_files['good_moral_files']) ? ucwords(esc(isset($studentadmission_status['good_moral_status']))) : 'No Status'?></label>
                          </div>
                      </a>
                  <?php else: ?>
                    <a href="<?php echo base_url('uploads/'.isset($studentadmission_files['good_moral_files'])); ?>" data-toggle="lightbox" data-gallery="example-gallery" class="col-lg-3 col-md-4 col-6 my-3" style="text-decoration: none;">
                    <h3 align = "center">No File </h3>
                    <div align = "center">
                    <label style="color:#dc3545;" class = "text-center">Good moral</label>
                  </div>
                  </a>
                  <?php endif ?>
                  <?php if(!empty($studentadmission_files['medical_cert_files'])): ?>
                      <a href="<?php echo base_url('uploads/'.$studentadmission_files['medical_cert_files']); ?>" data-toggle="lightbox" data-gallery="example-gallery" class="col-lg-3 col-md-4 col-6 my-3" style="text-decoration: none;">
                          <?php if (!empty($studentadmission_files['medical_cert_files'])): ?>
                            <img src="<?php echo base_url('uploads/'.$studentadmission_files['medical_cert_files']); ?>" class="img-fluid card">
                          <?php else: ?>
                            <h3 align="center">-No Files-</h3>
                          <?php endif ?>
                          <div align="center">
                            <label style="color:#dc3545;">Medical Clearance</label>
                            <br>
                            <label class = "label label-sucess fw-bold"><?=!empty($studentadmission_files['medical_cert_files']) ? ucwords(esc($studentadmission_status['medical_cert_status'])) : 'No Status'?></label>
                          </div>
                      </a>
                  <?php else: ?>
                    <a href="<?php echo base_url('uploads/'.isset($studentadmission_files['medical_cert_files'])); ?>" data-toggle="lightbox" data-gallery="example-gallery" class="col-lg-3 col-md-4 col-6 my-3" style="text-decoration: none;">
                    <h3 align = "center">No File </h3>
                    <div align = "center">
                    <label style="color:#dc3545;" class = "text-center">Medical Certificate </label>
                  </div>
                  </a>
                  <?php endif ?>
                  <?php if(!empty($studentadmission_files['picture_two_by_two_files'])): ?>
                      <a href="<?php echo base_url('uploads/'.$studentadmission_files['picture_two_by_two_files']); ?>" data-toggle="lightbox" data-gallery="example-gallery" class="col-lg-3 col-md-4 col-6 my-3" style="text-decoration: none;">
                          <?php if (!empty($studentadmission_files['picture_two_by_two_files'])): ?>
                            <img src="<?php echo base_url('uploads/'.$studentadmission_files['picture_two_by_two_files']); ?>" class="img-fluid card">
                          <?php else: ?>
                            <h3 align="center">-No Files-</h3>
                          <?php endif ?>
                          <div align="center">
                            <label style="color:#dc3545;">2x2 Picture</label>
                            <br>
                            <label class = "label label-sucess fw-bold"><?=!empty($studentadmission_files['picture_two_by_two_files']) ? ucwords(esc($studentadmission_status['twobytwo_status'])) : 'No Status'?></label>
                          </div>
                      </a>
                  <?php else: ?>
                    <a href="<?php echo base_url('uploads/'.isset($studentadmission_files['picture_two_by_two_files'])); ?>" data-toggle="lightbox" data-gallery="example-gallery" class="col-lg-3 col-md-4 col-6 my-3" style="text-decoration: none;">
                    <h3 align = "center">No File </h3>
                    <div align = "center">
                    <label style="color:#dc3545;" class = "text-center">2x2 Picture</label>
                  </div>
                  </a>
                  <?php endif ?>
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
                  <li>You are required to upload all softcopies of your admission credentials.</li>                     
                  <li>Make sure that all your uploads have been approved.</li>                     
                  <li>If your admission credentials is in the university, you may go there to scan them during office hours. (Weekdays from 8:00 AM - 5:00 PM only)</li>
                  </ul>
                </p>
              </span>
            </div>
          </div>
        </div>
    </div>
  </div>
</div>
