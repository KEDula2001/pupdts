<section class="content">
      <div class="card">
        <div class="card-body">
          <div class="row">
            <div class="col-12 mb-3">
              <span class="h2">Claimed Requests</span>
              <button class="float-end btn btn-primary" type="button" data-bs-toggle="collapse" data-bs-target="#collapseExample" aria-expanded="false" aria-controls="collapseExample">
                Generate Report
              </button>
              <br><p><i>Here are the list of requestors who have successfully claimed their requested documents.</i></p>
            </div>
          </div>
          <div class="row mb-3">
            <div class="collapse" id="collapseExample">
              <div class="card">
                <div class="card-body">
                  <form  action="claimed-requests/report" method="get">
                    <div class="row mb-3">
                      <div class="col-4">
                        <label for="document" class="form-label fw-bold">Document</label>
                        <select id="document" class="form-select" name="d">
                            <?php if ($hide_filter == true): ?>
                                    <option disabled selected> Select Documents</option>
                                <?php foreach($documents as $document): ?>
                                    <?php if($document['id'] == 6): ?>
                                       <option value="<?=esc($document['id'])?>"><?=esc(ucwords($document['document']))?></option>
                                    <?php endif; ?>
                                <?php endforeach; ?>
                            <?php else: ?>
                                <?php if (empty($documents)): ?>
                                    <option disabled selected>--No Documents Found--</option>
                                <?php else: ?>
                                    <option disabled selected> Select Documents</option>
                                    <?php foreach($documents as $document): ?>
                                        <?php if($document['id'] != 6): ?>
                                           <option value="<?=esc($document['id'])?>"><?=esc(ucwords($document['document']))?></option>
                                        <?php endif; ?>
                                    <?php endforeach; ?>
                                <?php endif; ?>
                            <?php endif; ?>
                        </select>
                      </div>
                      <div class="col-4">
                        <label  for="type" class="form-label fw-bold">Type</label>
                        <select id="type" class="form-select" name="t">
                          <option value="yearly">Yearly</option>
                          <option value="monthly">Monthy</option>
                          <option value="daily">Daily</option>
                        </select>
                      </div>
                      <div class="col-4">
                        <label for="argument" class="form-label fw-bold"> Date </label>
                        <input type="year" id="argument" class="form-control" name="a" required>
                      </div>
                    </div>
                    <div class="row">
                      <div class="col-12">
                        <button type="submit" style="background-color:green"class="float-end btn btn-secondary" formtarget="_blank"> Generate </button>
                      </div>
                    </div>
                  </form>
                </div>
              </div>
            </div>
          </div>
            <?php if ($hide_filter == false): ?>
              <div class="row">
                <div class="col-12">
                  <div class="input-group mb-3">
                    <label class="input-group-text" for="document">Filter by Documents: </label>
                    <select class="form-select" id="documents" onchange="filterClaimeds()">
                      <?php if (empty($documents)): ?>
                        <option value="" disabled selected>--No Documents Found--</option>
                      <?php else: ?>
                        <option value="0" selected>All</option>
                        <?php foreach($documents as $document): ?>
                            <?php if($document['id'] != 6): ?>
                               <option value="<?=esc($document['id'])?>"><?=esc(ucwords($document['document']))?></option>
                            <?php endif; ?>
                        <?php endforeach; ?>
                      <?php endif; ?>
                    </select>
                  </div>
                </div>
              </div>
            <?php endif; ?>
          <div class="row">
            <div class="col-12">
              <div class="table-responsive" id="claimedRequest">
                <table class="table table-striped table-bordered mt-3 dataTable" style="width:100%">
                  <thead>
                    <tr>
                      <th>Student Number</th>
                      <th>Name</th>
                      <th>Course</th>
                      <th>Document</th>
                      <th>Reason</th>
                      <th>Date Requested</th>
                      <th>Date Printed</th>
                      <th>Process Time</th>
                    </tr>
                  </thead>
                  <tbody>
                    <?php foreach ($request_details as $request_detail): ?>
                      <tr>
                      <td><?= esc($request_detail['student_number']) ?></td>
                      <td style="text-transform: uppercase;"><?= ucwords(esc($request_detail['firstname']) . ' ' . esc($request_detail['middlename']) . ' '. esc($request_detail['lastname']) . ' ' . esc($request_detail['suffix'])) ?></td>
                        <td><?=ucwords(esc($request_detail['abbreviation']))?></td>
                        <td style="text-transform: uppercase;"><?=ucwords(esc($request_detail['document']))?></td>
                        <td style="text-transform: uppercase;"><?=ucwords(esc($request_detail['reason']))?></td>
                        <td><?=date('M d, y - H:i A', strtotime(esc($request_detail['confirmed_at'])))?></td>
                        <td><?=date('M d, y - H:i A', strtotime(esc($request_detail['printed_at'])))?></td>
                        <td>
                            <?php $startTimeStamp = strtotime(esc($request_detail['confirmed_at'])) ?>
                            <?php $endTimeStamp = strtotime(esc($request_detail['printed_at'])) ?>
                            
                            <?php $timeDiff = abs($endTimeStamp - $startTimeStamp) ?>
                            
                            <?php $numberDays = $timeDiff/86400; ?>
                           
                            <?php $numberDays = intval($numberDays) ?>
                            
                            <?= $numberDays. " days" ?>
                        </td>
                      </tr>
                    <?php endforeach; ?>
                  </tbody>
                </table>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
  </div>
</div>
s