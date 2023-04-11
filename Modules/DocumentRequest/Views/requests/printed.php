    <section class="content">
        <div class="row">
            <div class="col-md-6">
                <div class="form-floating">
                    <input type="text" class="form-control mb-3" onEnter="scan()" name="slug" id="slug" class="floatingInput" placeholder="Student Number" required>
                    <label for="floatingInput">Enter Request Code Here</label>
                </div>
            </div>
            <div class="col-6 d-flex align-items-center justify-content-end">
                <div class="text-end">
                    <a class="btn btn-primary" href="printed-requests/get-report">Generate Report</a>
                </div>
            </div>
        </div>

      <div class="row">
        <div class="col-md-12">
          <div class="card">
            <div class="card-body">
                <?php if ($hide_filter == false): ?>
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
              <div class="table-responsive" id="processedTable">
                <table class="table table-data mt-3" id="processed-table" style="width:100%">
                  <thead>
                    <tr>
                      <th>Request Code</th>
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
