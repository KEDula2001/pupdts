<br>
<h1 style = "font-weight: bold;">REGISTRATION AND ADMISSION OFFICE</h1>
<h2>Summary of Incomplete Upload of Admission Credentials </h2>

<strong>Date:</strong> <?php echo  date("m/d/Y") ?> <strong>Time:</strong> <?php echo date("h:i:sa")?>
<section class="container-fluid">


  <div class="card">
    <div class="card-body">
      <table class="table table-responsive table-striped table-bordered mt-3 dataTable" style="width:100%" cellspacing="1" cellpadding="5" border="1" style = "text-align: center">
        <thead class="table-dark">
          <tr style="text-align: center;">
            <th>Student No.</th>
            <th>Student Name</th>
            <th>Course</th>
            <th>Batch</th>
            <!--<th>Status</th>-->
        
          </tr>
        </thead>
        <tbody>
          <?php if (!empty($students)): ?>
            <?php foreach ($students as $student): ?>
                <?php
                  $id = $student['user_id'];
                  $getstudentadmission = new App\Models\StudentadmissionModel; 
                                                      
                  $res = $getstudentadmission->__getSAMDetails($id);
                ?>
                <?php if (!empty($res)): ?>
                  <?php if ($res['upload_status'] == 'incomplete'): ?>
                    <tr >
                      <td><?=esc($student['student_number'])?></td>
                      <td>
                        <?php if (!empty($student['middlename'])): ?>
                          <?=strtoupper(ucwords($student['lastname'].', ')) ?><?=esc($student['firstname'].' '.$student['middlename'])?>
                        <?php else: ?>
                         <?=esc(ucwords($student['firstname'].' '.$student['lastname']))?>
                        <?php endif ?>
                      </td>
                      <td><?=esc($student['course'])?></td>
                      <td><?=esc($student['student_number'][0]).esc($student['student_number'][1]).esc($student['student_number'][2]).esc($student['student_number'][3])?></td>
                      
                     
                     
                    </tr>
                  <?php endif ?>
                <?php endif ?>
            <?php endforeach ?>
          <?php endif ?>
        </tbody>
      </table>
    </div>
  </div>
</section>