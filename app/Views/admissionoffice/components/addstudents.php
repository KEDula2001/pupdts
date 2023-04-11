<div class="container-admission" style="margin: 20px">
<div class="d-sm-flex align-items-center justify-content-between mb-4" style="margin: 50px">
        <nav style="--bs-breadcrumb-divider: '<'; font-weight: bold;" aria-label="breadcrumb">
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="<?php echo base_url('admission'); ?>"><i class="fas fa-home"></i></a></li>
          <li class="breadcrumb-item active" aria-current="page">Back to Dashboard</li>
        </ol>
      </nav>
  </div>
<section class="container-fluid" style="padding-left: 30%">
  
  <div class="row">
            <div class="row">
                <div class="col-md-5">
                  <input type="file" id="file" name="students" class="form-control" required>
                </div>
                <div class="col-md-2">
                  <button onClick='insertSpreadsheet()' class="btn btn-upload btn-primary">Upload file</button>
                </div>
                  <p style="font-style: italic;">*Upload an excel file that contains list of students</p>
            </div>
        </div>
    <div class="col-2"></div>
    <div class="col-8">
      <div class="card">
        <div class="card-body p-4">
          <nav style="--bs-breadcrumb-divider: '<'; font-weight: bold;" aria-label="breadcrumb">
            <ol class="breadcrumb">
              <li class="breadcrumb-item active" aria-current="page"><i class="fas fa-users"></i> Student Personal Information</li>
            </ol>
          </nav>
          <hr>
          <div class="row">
            <?php if (isset($errors['success_message'])): ?>
              <div class="alert alert-success alert-dismissible fade show" role="alert">
                <?=$errors['success_message']?>
                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
              </div>
            <?php endif; ?>
             <?php if (isset($errors['error_message'])): ?>
              <div class="alert alert-success alert-dismissible fade show" role="alert">
                <?=$errors['success_message']?>
                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
              </div>
            <?php endif; ?>
            <form class="form-floating" action="<?php echo base_url('/admission/insert-student'); ?>" method="post" autocomplete="off">
              <!-- first row -->
              <div class="row justify-content-center">
              <!-- student no. -->
                <div class="col-6">
                  <div class="form-group mb-3">
                    <label for="student_number" class="form-label">Student Number <small class="text-danger">*</small></label>
                    <input value="" type="text" name="student_number" class="form-control" id="student_number">
                    <?php if (isset($errors['student_number'])): ?>
                      <div class="text-danger">
                        <?=esc($errors['student_number'])?>
                      </div>
                    <?php endif; ?>
                  </div>
                </div>
                <!-- student no. -->
                <!-- firstname -->
                <div class="col-6">
                  <div class="form-group mb-3">
                    <label for="firstname" class="form-label">First Name <small class="text-danger">*</small></label>
                    <input value="" type="text" name="firstname" class="form-control" id="firstname">
                    <?php if (isset($errors['firstname'])): ?>
                      <div class="text-danger">
                        <?=esc($errors['firstname'])?>
                      </div>
                    <?php endif; ?>
                  </div>
                </div>
              </div>
              <!-- first row -->
              <!-- second row -->
              <div class="row justify-content-center">  
                <div class="col-6">
                  <div class="form-group mb-3">
                    <label for="lastname" class="form-label">Last Name <small class="text-danger">*</small></label>
                    <input value="" type="text" name="lastname" class="form-control" id="lastname">
                    <?php if (isset($errors['lastname'])): ?>
                      <div class="text-danger">
                        <?=esc($errors['lastname'])?>
                      </div>
                    <?php endif; ?>
                  </div>
                </div>
                <div class="col-6">
                  <div class="form-group mb-3">
                    <label for="middlename" class="form-label">Middle Name <small class="text-danger">*</small></label>
                    <input value="" type="text" name="middlename" class="form-control" id="middlename">
                    <?php if (isset($errors['middlename'])): ?>
                      <div class="text-danger">
                        <?=esc($errors['middlename'])?>
                      </div>
                    <?php endif; ?>
                  </div>
                </div>
              </div>
              <!-- second row -->                        
              <!-- third row -->
              <div class="row justify-content-left">
                <div class="col-6">
                  <div class="form-group mb-3">
                    <label for="email">Email <small class="text-danger">*</small></label>
                    <input type="text" class="form-control" value="" name="email" id="email">
                    <?php if (isset($errors['email'])): ?>
                      <div class="text-danger">
                        <?=esc($errors['email'])?>
                      </div>
                    <?php endif; ?>
                  </div>
                </div>
            
              <!-- third row -->
              <!-- third row -->
        
                <div class="col-6">
                  <div class="form-group mb-3">
                    <label for="birthdate">Birthdate <small class="text-danger">*</small></label>
                    <input type="date" class="form-control" name="birthdate" id="birthdate">
                    <?php if (isset($errors['birthdate'])): ?>
                      <div class="text-danger">
                        <?=esc($errors['birthdate'])?>
                      </div>
                    <?php endif; ?>
                  </div>
                </div>
              </div>
              <div class="row justify-content-left">
                <div class="col-12">
                  <div class="form-group mb-3">
                    <label for="course" hi>Course <small class="text-danger">*</small></label>
                      <select class="form-control" name="course_id">
                        <option selected disabled>Select Course</option>
                        <?php if (!empty($courses)): ?>
                          <?php foreach ($courses as $course): ?>
                            <option value="<?=esc($course['id'])?>"><?=esc($course['course'])?></option>
                          <?php endforeach; ?>
                        <?php endif; ?>     
                      </select>
                    <?php if (isset($errors['course_id'])): ?>
                      <div class="text-danger">
                        <?=esc($errors['course_id'])?>
                      </div>
                    <?php endif; ?>
                  </div>
                </div>
              </div>
              <!-- third row -->
              <button type="submit" class="float-end btn btn-primary" name="button">Submit</button>
            </form>
          </div>
        </div>
      </div>
    </div>
    <div class="col-2"></div>
  </div>
</section>