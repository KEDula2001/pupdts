    <section class="content">
      <div class="col-6 offset-3">
        <div class="form-floating">
          <input type="text" class="form-control mb-3"onEnter="scan()" name="slug" id="slug" class="floatingInput" placeholder="Student Number" required>
          <label for="floatingInput">Enter Bar Code Here</label>
        </div>
      </div>
      <div class="row">
        <div class="col-md-12">
          <div class="card">
            <div class="card-body">
              <div class="row mt-3 mb-3">
                <div class="col-12">
                  <div class="input-group mb-3">
                    <label class="input-group-text" for="document">Filter by Documents: </label>
                    <select class="form-select" id="document" onchange="filterPrintedDocument()">
                      <?php if (empty($documents)): ?>
                        <option value="" disabled selected>--No Documents Found--</option>
                      <?php else: ?>
                        <option value="0" selected>All</option>
                        <?php foreach($documents as $document): ?>
                          <option value="<?=esc($document['id'])?>"><?=esc(ucwords($document['document']))?></option>
                        <?php endforeach; ?>
                      <?php endif; ?>
                    </select>
                  </div>
                </div>
              </div>
              <div class="table-responsive" id="processedTable">
                <table class="table table-data mt-3" id="processed-table" style="width:100%">
                  <thead>
                    <tr>
                      <th>Bar Code</th>
                      <th>Name</th>
                      <th>Course</th>
                      <th>Document</th>
                      <th>Date Requested</th>
                      <th>Date Printed</th>
                      <!-- <th>Action</th> -->
                    </tr>
                  </thead>
                  <tbody>
                    <?php foreach ($request_details_release as $request_detail): ?>
                      <tr>
                        <td><?=esc($request_detail['slug'])?></td>
                        <td><?=ucwords(esc($request_detail['firstname']) . ' ' . esc($request_detail['lastname']) . ' ' . esc($request_detail['suffix']))?></td>
                        <td><?=ucwords(esc($request_detail['course']))?></td>
                        <td><?=ucwords(esc($request_detail['document']))?></td>
                        <td><?=date('F d, Y', strtotime(esc($request_detail['confirmed_at'])))?></td>
                        <td><?=date('F d, Y', strtotime(esc($request_detail['printed_at'])))?></td>
                         <!-- <td>
                              <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#history<?=esc($request_detail['id'])?>">
                                View
                              </button>
                               <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button> 
                              <div class="modal fade" id="history<?=esc($request_detail['id'])?>" tabindex="-1" aria-labelledby="history<?=esc($request_detail['id'])?>Label" aria-hidden="true">
                                <div class="modal-dialog modal-xl modal-dialog-centered">
                                  <div class="modal-content">
                                    <div class="modal-header">
                                      <h5 class="modal-title" id="exampleModalLabel">Request - <?=esc(ucwords($request_detail['slug']))?></h5>
                                      <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                    </div>
                                    <div class="modal-body">
                                      <table>
                                        <tr>
                                          <th>Requestor:</th>
                                          <td><?=ucwords(esc($request_detail['firstname']) . ' '. esc($request_detail['lastname']))?></td>
                                        </tr>
                                        <tr>
                                          <th>Reason:</th>
                                          <td><?=esc($request_detail['reason'])?></td>
                                        </tr>
                                        <tr>
                                          <th>Date Approved:</th>
                                          <td><?=date('M d, Y', strtotime(esc($request['approved_at'])))?></td>
                                          <th>Date Completed:</th>
                                          <td><?=date('M d, Y', strtotime(esc($request['completed_at'])))?></td>
                                        </tr>
                                      </table>
                                      <div class="table-responsive">
                                        <table class="table table-striped table-bordered">
                                          <tr>
                                            <th width="1%">#</th>
                                            <th width="14%">Document Requested</th>
                                            <th width="50%">General Clearance</th>
                                            <th width="15%">Date Printed</th>
                                            <th width="15%">Date Claimed</th>
                                            <th width="5%">Price</th>
                                          </tr>
                                          <?php $ctr = 1 ?>
                                          <?php foreach ($documents as $document): ?>
                                            <?php if (esc($document['request_id']) == esc($request['id'])): ?>
                                              <tr>
                                                <td><?=esc($ctr)?></td>
                                                <td><?=esc($document['document'])?></td>
                                                <td>
                                                  <table class="table" width="100%" border="0" align="center">
                                                  <?php $approval_ctr = 0; ?>
                                                  <?php foreach ($office_approvals as $office_approval): ?>
                                                    <?php if ($office_approval['request_detail_id'] == $document['id']): ?>
                                                      <?php if ($approval_ctr++ == 0): ?>
                                                          <tr>
                                                            <th>Office</th>
                                                            <th>Approve Date</th>
                                                            <th>Hold Date</th>
                                                            <th>Hold Remark</th>
                                                          </tr>
                                                      <?php endif; ?>
                                                      <tr>
                                                        <td><?=ucwords(esc($office_approval['office']))?></td>
                                                        <td><?=date('M d, Y', strtotime(esc($office_approval['approved_at'])))?></td>
                                                        <td><?=$office_approval['hold_at'] == null ? 'N/A': date('M d, Y', strtotime(esc($office_approval['hold_at'])))?></td>
                                                        <td><?=$office_approval['remark'] == null ? 'N/A' :ucwords(esc($office_approval['remark']))?></td>
                                                      </tr>
                                                      <?php $approval_ctr++; ?>
                                                    <?php endif; ?>

                                                  <?php endforeach; ?>
                                                  </table>
                                                  <?php if ($approval_ctr++ == 0): ?>
                                                    This document doesn't require a clearance
                                                  <?php endif; ?>
                                                </td>
                                                <td><?=date('M d, Y', strtotime(esc($document['printed_at'])))?></td>
                                                
                                                <td>
                                                  <?php if ($request_document['page'] == null): ?>
                                                    <?=esc($request_document['price'] * $request_document['quantity'])?>
                                                  <?php else: ?>
                                                    <?=esc(($request_document['price'] * $request_document['page']) * $request_document['quantity'])?>
                                                  <?php endif; ?>
                                                </td>
                                              </tr>
                                              <?php $ctr++; ?>
                                            <?php endif; ?>
                                          <?php endforeach; ?>
                                        </table>
                                      </div>
                                    </div>
                                    <div class="modal-footer">
                                      <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                                    </div>
                                  </div>
                                </div>
                              </div>
                              </td> -->

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
