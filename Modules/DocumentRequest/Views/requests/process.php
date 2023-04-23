    <section class="content">
      <div class="card">
        <div class="card-body">
            <?php if ($hide_filter == false): ?>
              <div class="row mt-3 mb-3">
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
                               <option value="<?=esc($document['id'])?>">
                               <?php
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
                              ?>
                              </option>
                            <?php endif; ?>
                        <?php endforeach; ?>
                      <?php endif; ?>
                    </select>
                  </div>
                </div>
              </div>
            <?php endif; ?>
          <div class="table-responsive" id="processTable">
            <table id="process-table" class="table table-striped table-bordered mt-3" style="width:100%">
              <thead>
                <tr>
                  <th>id</th>
                  <th>request_id</th>
                  <th>Student Number</th>
                  <th>Name</th>
                  <th>Course</th>
                  <th>Document</th>
                  <th>Date Requested</th>
                  <th>Action</th>
                </tr>
              </thead>
              <tbody>
                <?php foreach ($request_details as $request_detail): ?>
                  <tr>
                    <td><?=esc($request_detail['id'])?></td>
                    <td><?=esc($request_detail['request_id'])?></td>
                    <td><?=esc($request_detail['student_number'])?></td>
                    <td style="text-transform: uppercase;"><?=ucwords(esc($request_detail['firstname']) . ' ' . esc($request_detail['lastname']) . ' ' . esc($request_detail['suffix']))?></td>
                    <td>
                        <?php
                        $prepositions = array('of', 'in', 'on', 'at', 'by', 'with', 'to', 'from', 'into', 'onto', 'upon', 'out', 'over', 'through', 'under', 'up', 'down', 'for', 'as', 'before', 'after', 'during', 'since', 'throughout', 'till', 'until', 'above', 'below', 'beneath', 'beside', 'between', 'among', 'around', 'behind', 'beyond', 'inside', 'outside', 'underneath', 'within', 'without');
                            $document = $request_detail['course'];
                            $words = explode(' ', $document);
                            foreach ($words as $i => $word) {
                                if (in_array(strtolower($word), $prepositions)) {
                                    echo strtolower($word) . ' ';
                                } else {
                                    echo ucfirst(strtolower($word)) . ' ';
                                  }
                            }
                        ?>
                    </td>
                    <td>
                      <?php
                          $document = $request_detail['document'];
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
                          ?>
                    </td>
                    <td><?=date('F d, Y - h:i A', strtotime(esc($request_detail['confirmed_at'])))?></td>
                    <td>
                      <button type="button" onClick="printRequest(<?=$request_detail['id']?>, <?=$request_detail['per_page_payment']?>, <?=$request_detail['template'] == null ? 'null': "'".$request_detail['template']."'"?>, '<?=$request_detail['email']?>')" class="btn btn-primary" name="button">Complete</button>
                    </td>
                  </tr>
                <?php endforeach; ?>
              </tbody>
            </table>
          </div>
        </div>
      </div>
    </section>
  </div>
</div>
