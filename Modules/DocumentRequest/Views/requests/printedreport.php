<br>
<h1>Detailed Report of Printed Document Requests to Claim</h1>
<strong>Date:</strong> <?php echo  date("m/d/Y") ?> <strong>Time:</strong> <?php echo date("h:i:sa")?><br><br>
<h3>Total: <?=esc(count($documents))?></h3>
<br>
<table cellspacing="0" cellpadding="5" border="1">
  <tr style="text-align: center; font-weight: bold; text-transform: uppercase;">
    <th>REQUEST CODE</th>
    <th>NAME</th>
    <th>COURSE</th>
    <th>DOCUMENT</th>
    <th>DATE REQUESTED</th>
    <th>DATE PRINTED</th>
    <!-- <th>Action</th> -->
  </tr>
</thead>
<tbody>
  <?php foreach ($request_details_release as $request_detail): ?>
    <tr>
      <td><?=esc($request_detail['slug'])?></td>
      <td><?=ucwords(esc($request_detail['firstname']) . ' ' . esc($request_detail['lastname']) . ' ' . esc($request_detail['suffix']))?></td>
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
      <td><?=date('F d, Y', strtotime(esc($request_detail['confirmed_at'])))?></td>
      <td><?=date('F d, Y', strtotime(esc($request_detail['printed_at'])))?></td>
    </tr>
  <?php endforeach; ?>
</tbody>
</table>
