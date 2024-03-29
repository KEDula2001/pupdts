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
                                    <?php if($document['id'] == 6 && $document['id'] != 26): ?>
                                       <option value="<?=esc($document['id'])?>"><?php
                          $prepositions = array('of', 'in', 'on', 'at', 'by', 'with', 'to', 'from', 'into', 'onto', 'upon', 'out', 'over', 'through', 'under', 'up', 'down', 'for', 'as', 'before', 'after', 'during', 'since', 'throughout', 'till', 'until', 'above', 'below', 'beneath', 'beside', 'between', 'among', 'around', 'behind', 'beyond', 'inside', 'outside', 'underneath', 'within', 'without');

                          $document = $document['document'];
                          preg_match_all('/\(([^)]+)\)/', $document, $matches); // find all substrings enclosed in parentheses
                          foreach ($matches[1] as $match) { // loop through each substring
                              $capitalized = '';
                              foreach (explode(' ', $match) as $word) {
                                  if ($word === strtoupper($word)) { // preserve existing capitalization
                                      $capitalized .= $word . ' ';
                                  } else {
                                      $capitalized .= ucfirst(strtolower($word)) . ' '; // capitalize first letter of each word
                                  }
                              }
                              $capitalized = rtrim($capitalized); // remove trailing space
                              $document = str_replace('(' . $match . ')', '(' . $capitalized . ')', $document); // replace the original substring with a modified version
                          }

                          $words = explode(' ', $document);
                          foreach ($words as $i => $word) {
                              if (in_array(strtolower($word), $prepositions)) {
                                  echo strtolower($word) . ' ';
                              } else if ($word === strtoupper($word) || $word === ucfirst(strtolower($word))) {
                                  echo $word . ' ';
                              } else {
                                  if (preg_match('/^\((.*)\)$/', $word, $matches)) { // check if the word is enclosed in parentheses
                                      echo '(' . ucfirst(strtolower($matches[1])) . ') '; // capitalize first letter of the enclosed word and add back parentheses
                                  } else {
                                      echo ucfirst(strtolower($word)) . ' '; // capitalize first letter of each word
                                    }
                                }
                            }
                          ?></option>
                                    <?php endif; ?>
                                <?php endforeach; ?>
                            <?php else: ?>
                                <?php if (empty($documents)): ?>
                                    <option disabled selected>--No Documents Found--</option>
                                <?php else: ?>
                                    <option value="0"> All</option>
                                    <?php foreach($documents as $document): ?>
                                        <?php if($document['id'] != 6 && $document['id'] != 26): ?>
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
                          <option value="q1">1st Quarter</option>
                          <option value="q2">2nd Quarter</option>
                          <option value="q3">3rd Quarter</option>
                          <option value="q4">4th Quarter</option>
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
                            <?php if($document['id'] != 6 && $document['id'] != 26): ?>
                               <option value="<?=esc($document['id'])?>"><?php
                          $prepositions = array('of', 'in', 'on', 'at', 'by', 'with', 'to', 'from', 'into', 'onto', 'upon', 'out', 'over', 'through', 'under', 'up', 'down', 'for', 'as', 'before', 'after', 'during', 'since', 'throughout', 'till', 'until', 'above', 'below', 'beneath', 'beside', 'between', 'among', 'around', 'behind', 'beyond', 'inside', 'outside', 'underneath', 'within', 'without');

                          $document = $document['document'];
                          preg_match_all('/\(([^)]+)\)/', $document, $matches); // find all substrings enclosed in parentheses
                          foreach ($matches[1] as $match) { // loop through each substring
                              $capitalized = '';
                              foreach (explode(' ', $match) as $word) {
                                  if ($word === strtoupper($word)) { // preserve existing capitalization
                                      $capitalized .= $word . ' ';
                                  } else {
                                      $capitalized .= ucfirst(strtolower($word)) . ' '; // capitalize first letter of each word
                                  }
                              }
                              $capitalized = rtrim($capitalized); // remove trailing space
                              $document = str_replace('(' . $match . ')', '(' . $capitalized . ')', $document); // replace the original substring with a modified version
                          }

                          $words = explode(' ', $document);
                          foreach ($words as $i => $word) {
                              if (in_array(strtolower($word), $prepositions)) {
                                  echo strtolower($word) . ' ';
                              } else if ($word === strtoupper($word) || $word === ucfirst(strtolower($word))) {
                                  echo $word . ' ';
                              } else {
                                  if (preg_match('/^\((.*)\)$/', $word, $matches)) { // check if the word is enclosed in parentheses
                                      echo '(' . ucfirst(strtolower($matches[1])) . ') '; // capitalize first letter of the enclosed word and add back parentheses
                                  } else {
                                      echo ucfirst(strtolower($word)) . ' '; // capitalize first letter of each word
                                    }
                                }
                            }
                          ?></option>
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
                        <td><?=date('F d, Y - h:i A', strtotime(esc($request_detail['confirmed_at'])))?></td>
                        <td><?=date('F d, Y - h:i A', strtotime(esc($request_detail['printed_at'])))?></td>
                        <td>
                            <?php $startTimeStamp = strtotime(esc($request_detail['confirmed_at'])) ?>
                            <?php $endTimeStamp = strtotime(esc($request_detail['printed_at'])) ?>
                            
                            <?php $timeDiff = abs($endTimeStamp - $startTimeStamp) ?>
                            
                            <?php $numberDays = $timeDiff/86400; ?>
                           
                            <?php $numberDays = intval($numberDays) ?>
                            
                            <?= ($numberDays == 0 || $numberDays < 0 ? "Within the day" : $numberDays. " day(s)") ?>
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