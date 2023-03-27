<div class="container p-1 mt-3" id="content">
  <div class="row">
    <div class="col-md-12">
      <div class="card">
        <div class="card-body">
          <nav style="--bs-breadcrumb-divider: url(&#34;data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='8' height='8'%3E%3Cpath d='M2.5 0L1 1.5 3.5 4 1 6.5 2.5 8l4-4-4-4z' fill='currentColor'/%3E%3C/svg%3E&#34;);" aria-label="breadcrumb">
            <ol class="breadcrumb">
              <li class="breadcrumb-item"><a href="/requests"><i class="fas fa-home"></i></a></li>
              <li class="breadcrumb-item active" aria-current="page">Request Document</li>
            </ol>
          </nav>
          <hr>
          <div class="row">
            <div class="col-md-12">
              <div class="alert alert-warning" role="alert">
                <i class="fas fa-exclamation-circle"></i> Make sure the information is correct before submitting the request
              </div>
            </div>
          </div>
          <div class="row">
            <div class="col-md-6">
              <div class="row">
                <div class="col-md-12">
                  <span class="h5">User Information</span>
                </div>
              </div>
              <div class="row">
                <div class="col-md-4">
                  Name:
                </div>
                <div class="col-md-7">
                  <span style="text-transform: uppercase;"><?=ucwords(esc($student['firstname']) . ' ' . esc($student['middlename']) . ' ' . esc($student['lastname']) . ' ' . esc($student['suffix']))?></span>
                </div>
              </div>
              <div class="row">
                <div class="col-md-4">
                  Gender:
                </div>
                <div class="col-md-7">
                  <?=$student['gender'] == 'm' ? 'Male': 'Female'?>
                </div>
              </div>
              <div class="row">
                <div class="col-md-4">
                  Status:
                </div>
                <div class="col-md-7">
                  <?=ucwords(esc($student['status']))?>
                </div>
              </div>
              <div class="row">
                <div class="col-md-4">
                  Course and <?=$student['status'] == 'enrolled' ? 'Level':'Year Graduated'?>:
                </div>
                <div class="col-md-7">
                  <?=strtoupper($student['abbreviation'] . ' ' . $student['level'])?>
                </div>
              </div>
              <div class="row">
                <div class="col-md-4">
                  Birthdate:
                </div>
                <div class="col-md-7">
                  <?=date('F d, Y',strtotime(esc($student['birthdate'])))?>
                </div>
              </div>
              <div class="row">
                <div class="col-md-4">
                  Email:
                </div>
                <div class="col-md-7">
                  <?=ucwords(esc($student['email']))?>
                </div>
              </div>
              <div class="row">
                <div class="col-md-4">
                  Contact:
                </div>
                <div class="col-md-7">
                  <?=ucwords(esc($student['contact']))?>
                </div>
              </div>
            </div>
            <div class="col-md-6">
              <form action="/requests/additional-info/<?=$_SESSION['student_id']?>" method="post">
                <div class="row border-bottom">
                  <div class="col-md-12">
                    <span class="h5">Required Additional Information</span> <small class="text-danger">*</small>
                  </div>
                </div>
                <div class="row border-bottom">
                  <div class="col-md-4">
                    Present/Permanent Mailing Address: <small class="text-danger">*</small>
                  </div>
                  <div class="col-md-7">
                    <?php if ($student['address'] == null): ?>
                      <input 
                        type="text"
                        class="form-control" 
                        name="address" 
                        id="address"
                        placeholder="Present/Permanent mailing address . . ."
                        value="<?= isset($value['address']) != null ? $value['address'] : ucwords(esc($student['address']))?>"
                        <?= $student['address'] == null ? '' : 'disabled'?>
                      >
                    <?php else: ?>
                      <?=ucwords(esc($student['address']))?>
                    <?php endif; ?>
                  </div>
                  <?php if (isset($errors['address'])): ?>
                    <div class="text-danger">
                      <?=esc($errors['address'])?>
                    </div>
                  <?php endif; ?>
                </div>
                <div class="row border-bottom">
                  <div class="col-md-4">
                    Admitted in PUP S.Y.: <small class="text-danger">*</small>
                  </div>
                  <div class="col-md-7">
                    <?php if ($student['admitted_year_sy'] == null): ?>
                      <input 
                        type="text"
                        class="form-control" 
                        name="admitted_year_sy" 
                        id="admitted_year_sy"
                        pattern="[0-9]{4}-[0-9]{4}"
                        placeholder="ex. <?=date("Y")?>-<?=date("Y")?>"
                        value="<?= isset($value['admitted_year_sy']) != null ? $value['admitted_year_sy'] : esc($student['admitted_year_sy'])?>"
                        <?= $student['admitted_year_sy'] == null ? '' : 'disabled'?>
                      >
                    <?php else: ?>
                      <?=ucwords(esc($student['admitted_year_sy']))?>
                    <?php endif; ?>
                  </div>
                  <?php if (isset($errors['admitted_year_sy'])): ?>
                    <div class="text-danger">
                      <?=esc($errors['admitted_year_sy'])?>
                    </div>
                  <?php endif; ?>
                </div>
                <div class="row border-bottom">
                  <div class="col-md-4">
                    Semester: <small class="text-danger">*</small>
                  </div>
                  <div class="col-md-7">
                    <?php if($student['semester'] == null):?>
                      <select 
                        class="form-select" 
                        name="semester" 
                      >
                        <option selected disabled> -- select semester - </option>
                        <option value="First Semester" <?= isset($value['semester']) == 'First Semester' ? '' : 'selected'?>> First Semester </option>
                        <option value="Second Semester" <?= isset($value['semester']) == 'Second Semester' ? '' : 'selected'?>> Second Semester </option>
                        <option value="Summer Semester" <?= isset($value['semester']) == 'Summer Semester' ? '' : 'selected'?>> Summer Semester </option>
                      </select>
                    <?php else: ?>
                      <?=ucwords(esc($student['semester']))?>
                    <?php endif; ?>
                  </div>
                  <?php if (isset($errors['semester'])): ?>
                    <div class="text-danger">
                      <?=esc($errors['semester'])?>
                    </div>
                  <?php endif; ?>
                </div>
                <div class="row border-bottom">
                  <div class="col-md-4 mb-2">
                    Elementary School Name: <small class="text-danger">*</small>
                  </div>
                  <div class="col-md-7 mb-2">
                    <?php if($student['elem_school_address'] == null):?>
                      <input 
                        type="text"
                        class="form-control" 
                        name="elem_school_address" 
                        id="elem_school_address"
                        placeholder="Elementary school name . . ."
                        value="<?= isset($value['elem_school_address']) != null ? $value['elem_school_address'] : ucwords(esc($student['elem_school_address']))?>"
                        <?= $student['elem_school_address'] == null ? '' : 'disabled'?>
                      >
                    <?php else: ?>
                      <?=ucwords(esc($student['elem_school_address']))?>
                    <?php endif; ?>
                  </div>
                  <?php if (isset($errors['elem_school_address'])): ?>
                    <div class="text-danger">
                      <?=esc($errors['elem_school_address'])?>
                    </div>
                  <?php endif; ?>
                  <div class="col-md-4">
                    Year Graduated: <small class="text-danger">*</small>
                  </div>
                  <div class="col-md-7">
                    <?php if($student['elem_year_graduated'] == null):?>
                      <input 
                        type="text"
                        class="form-control" 
                        name="elem_year_graduated" 
                        id="elem_year_graduated"
                        pattern="[0-9]{4}"
                        placeholder="ex. <?=date("Y")?>"
                        value="<?= isset($value['elem_year_graduated']) != null ? $value['elem_year_graduated'] : esc($student['elem_year_graduated'])?>"
                        <?= $student['elem_year_graduated'] == null ? '' : 'disabled'?>
                      >
                    <?php else: ?>
                      <?=ucwords(esc($student['elem_year_graduated']))?>
                    <?php endif; ?>
                  </div>
                  <?php if (isset($errors['elem_year_graduated'])): ?>
                    <div class="text-danger">
                      <?=esc($errors['elem_year_graduated'])?>
                    </div>
                  <?php endif; ?>
                </div>
                <div class="row border-bottom">
                  <div class="col-md-4 mb-2">
                    High School Name: <small class="text-danger">*</small>
                  </div>
                  <div class="col-md-7 mb-2">
                    <?php if($student['high_school_address'] == null):?>
                      <input 
                        type="text"
                        class="form-control" 
                        name="high_school_address" 
                        id="high_school_address"
                        placeholder="High school name . . ."
                        value="<?= isset($value['high_school_address']) != null ? $value['high_school_address'] : ucwords(esc($student['high_school_address']))?>"
                        <?= $student['high_school_address'] == null ? '' : 'disabled'?>
                      >
                    <?php else: ?>
                      <?=ucwords(esc($student['high_school_address']))?>
                    <?php endif; ?>
                  </div>
                  <?php if (isset($errors['high_school_address'])): ?>
                    <div class="text-danger">
                      <?=esc($errors['high_school_address'])?>
                    </div>
                  <?php endif; ?>
                  <div class="col-md-4">
                    Year Graduated: <small class="text-danger">*</small>
                  </div>
                  <div class="col-md-7">
                    <?php if($student['high_year_graduated'] == null):?>
                      <input 
                        type="text"
                        class="form-control" 
                        name="high_year_graduated" 
                        id="high_year_graduated"
                        pattern="[0-9]{4}"
                        placeholder="ex. <?=date("Y")?>"
                        value="<?= isset($value['high_year_graduated']) != null ? $value['high_year_graduated'] : esc($student['high_year_graduated'])?>"
                        <?= $student['high_year_graduated'] == null ? '' : 'disabled'?>
                      >
                    <?php else: ?>
                      <?=ucwords(esc($student['high_year_graduated']))?>
                    <?php endif; ?>
                  </div>
                  <?php if (isset($errors['high_year_graduated'])): ?>
                    <div class="text-danger">
                      <?=esc($errors['high_year_graduated'])?>
                    </div>
                  <?php endif; ?>
                </div>
                <div class="row border-bottom">
                  <div class="col-md-4 mb-2">
                    College School Name: <small class="text-danger">*</small>
                  </div>
                  <div class="col-md-7 mb-2">
                    <?php if($student['college_school_address'] == null):?>
                      <input 
                        type="text"
                        class="form-control" 
                        name="college_school_address" 
                        id="college_school_address"
                        placeholder="College school name . . ."
                        value="<?= isset($value['college_school_address']) != null ? $value['college_school_address'] : ucwords(esc($student['college_school_address']))?>"
                        <?= $student['college_school_address'] == null ? '' : 'disabled'?>
                      >
                    <?php else: ?>
                      <?=ucwords(esc($student['college_school_address']))?>
                    <?php endif; ?>
                  </div>
                  <?php if (isset($errors['college_school_address'])): ?>
                    <div class="text-danger">
                      <?=esc($errors['college_school_address'])?>
                    </div>
                  <?php endif; ?>
                  <div class="col-md-4">
                    Year Graduated: <small class="text-danger">*</small>
                  </div>
                  <div class="col-md-7">
                    <?php if($student['year_graduated'] == null):?>
                      <?php if($student['status'] == 'alumni'):?>
                        <input 
                          type="text" 
                          class="form-control" 
                          name="year_graduated" 
                          pattern="[0-9]{4}"
                          id="college_year_graduated" 
                          placeholder="ex. <?=date("Y")?>"
                          value="<?= isset($value['year_graduated']) != null ? $value['year_graduated'] : esc($student['year_graduated'])?>"
                          <?= $student['year_graduated'] == null ? '' : 'disabled'?>
                        >
                      <?php else: ?>
                        -
                        <input 
                          type="hidden" 
                          name="year_graduated" 
                          value="<?=date("Y")?>"
                        >
                      <?php endif; ?>
                    <?php else: ?>
                      <?=ucwords(esc($student['year_graduated']))?>
                    <?php endif; ?>
                  </div>
                  <?php if (isset($errors['year_graduated'])): ?>
                    <div class="text-danger">
                      <?=esc($errors['year_graduated'])?>
                    </div>
                  <?php endif; ?>
                </div>
                <div class="row">
                  <div class="col-md-12"> 
                    <?php if(
                      $student['address'] == null || 
                      $student['admitted_year_sy'] == null ||
                      $student['semester'] == null ||
                      $student['elem_school_address'] == null || 
                      $student['elem_year_graduated'] == null || 
                      $student['high_school_address'] == null || 
                      $student['high_year_graduated'] == null ||  
                      $student['college_school_address'] == null
                    ):?>
                      <button type="submit" id="submitbtn" class="btn float-start" name="button"><i class="fas fa-plus"></i> Add </button>
                    <?php endif; ?>
                  </div>
                </div>
              </form>
            </div>
          </div>
          <form class="" action="new" method="post">
            <div class="row">
              <div class="col-md-6">
                <div class="row">
                  <div class="col-md-12">
                    <label for="reasonInput" class="form-label" required><h5>Reason/s for Requesting</h5></label>
                  </div>
                </div>
                  <div class="form-check" id="reasonInput">
                    <input class="form-check-input reasons" type="radio" value="scholarship" name="reason" id="scholarship" required checked>
                    <label class="form-check-label" for="scholarship">
                      Scholarship Requirement
                    </label>
                  </div>
                  <div class="form-check" id="reasonInput">
                    <input class="form-check-input reasons" type="radio" value="employment" name="reason" id="employment" required>
                    <label class="form-check-label" for="employment">
                      Employment
                    </label>
                  </div>
                  <div class="form-check" id="reasonInput">
                    <input class="form-check-input reasons" type="radio" value="re-admission" name="reason" id="re-admission" required>
                    <label class="form-check-label" for="re-admission">
                      Re-admission
                    </label>
                  </div>
                  <div class="form-check" id="reasonInput">
                    <input class="form-check-input reasons" type="radio" value="transfer to other school" name="reason" id="transfer" required>
                    <label class="form-check-label" for="transfer">
                      Transfer to other school
                    </label>
                  </div>
                  <div class="form-check" id="reasonInput">
                    <input class="form-check-input reasons" type="radio" value="others" name="reason" id="others" required>
                    <label class="form-check-label" for="others">
                      Others
                    </label>
                  </div>
                  <input type="text" name="reason" value="" id="other_input" class="form-control form-control-sm" placeholder="Other Reason" disabled hidden>
                  <br>
                </div>
              </div>
            <hr>
            <div class="row">
              <div class="col-12">
                <div class="row">
                  <label for="Document" class="form-label"><h5>List of Documents</h5></label>
                </div>
                <div class="table-responsive">
                  <table class="table w-100 table-striped table-sm">
                    <thead>
                      <tr>
                        <th width="2%">#</th>
                        <th width="20%">Document</th>
                        <th width="20%">Quantity</th>
                        <th width="20%">Processing Time</th>
                        <th width="20%">Price</th>
                      </tr>
                    </thead>
                    <tbody>
                      <?php foreach ($documents as $document): ?>
                          <tr>
                            <td>
                              <input class="form-check-input document-checkbox" name="document_id[]" type="checkbox" id="<?=trim(str_replace(' ', '', $document['document']))?>" value="<?=esc($document['id'])?>" onchange="showDetail(this)" >
                            </td>
                            <td>
                              <label class="form-check-label" for="<?=trim(str_replace(' ', '', $document['document']))?>"><?=esc($document['document'])?></label>
                            </td>
                            <td>
                              <input type="number" name="quantity[]" value="1" class="form-control quantity-form form-control-sm" id="qty-form-<?=trim(str_replace(' ', '', $document['document']))?>" disabled required>
                              <?php if ($document['is_free_on_first']): ?>
                                <input type="checkbox" name="first[<?=esc($document['id'])?>]" value="1" class="form-check-input" id="free-form-<?=trim(str_replace(' ', '', $document['document']))?>" disabled>
                                <label class="form-check-label" for="free-form-<?=trim(str_replace(' ', '', $document['document']))?>">First Request</label>
                              <?php endif; ?>
                            </td>
                            <td>
                                <?php if ($document['id'] == '10'): ?>
                                    <?php echo '12 working days'; ?>
                                    <?php else: ?>
                                      <?php echo '3 working days'; ?>
                                <?php endif; ?>
                            </td>

                            <td>P <?=esc($document['price'])?></td>
                          </tr>
                      <?php endforeach; ?>
                    </tbody>
                  </table>
                </div>
                <?php if (isset($error['document_id'])): ?>
                  <div class="text-danger">
                    <?=esc($error['document_id'])?>
                  </div>
                <?php endif; ?>
                <?php if (isset($error['quantity.*']) && !isset($error['document_id'])): ?>
                  <div class="text-danger">
                    <?=esc($error['quantity.*'])?>
                  </div>
                <?php endif; ?>
              </div>
            </div>
            <div class="row">
              <div class="col-md-12">
                <div class="alert alert-primary" role="alert">
                  <i class="fas fa-exclamation-circle"></i> After submitting your request, please wait for an email to be sent to you for the confirmation of your General Clearance before proceeding to the PUP Taguig Accounting Office.
                </div>
              </div>
            </div>
            <div class="row">
              <div class="col-md-12">
                <button type="submit" id="submitbtn" class="btn float-end" name="button">Submit <i class="fas fa-paper-plane"></i></button>
              </div>
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>
</div>
