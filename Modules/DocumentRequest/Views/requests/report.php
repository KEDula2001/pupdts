<br>
<h1>Detailed Report</h1>
<strong>Date:</strong> <?php echo  date("m/d/Y") ?> <strong>Time:</strong> <?php echo date("h:i:sa")?><br><br>
<h3>Total: <?=esc(count($documents))?></h3>
<br>
<h3><?=esc($document)?> -  (<?=esc(ucwords($types['t']))?> | <?=esc(ucwords($types['a']))?> )</h3>
<table cellspacing="0" cellpadding="5" border="1">
  <tr style="text-align: center;">
    <td width="5%"> <b>#</b> </td>
    <td width="20%"> <b>Name</b> </td>
    <td width="15%"> <b>Status</b> </td>
    <td width="10%"> <b>Year Gaduated</b> </td>
    <td width="10%"> <b>Course</b> </td>
    <td width="10%"> <b>Date Requested</b> </td>
    <td width="10%"> <b>Date Printed</b> </td>
    <td width="20%"> <b>Process Time</b> </td>
  </tr>
  <?php if (empty($documents)): ?>
    <tr>
      <td colspan="7" style="text-align: center;"> No Available Data </td>
    </tr>
  <?php else: ?>
    <?php $ctr = 1; ?>
    <?php foreach ($documents as $document): ?>
      <tr style="text-align: center;">
        <td> <?=$ctr?> </td>
        <td>
            <?php if (!empty($document['middlename'])): ?>                 
              <?=strtoupper(ucwords($document['lastname'].', ')) ?><?=esc($document['firstname'].' ')?><?=esc($document['middlename'])?>                 
              <?php else: ?>                 
                <?=strtoupper(ucwords($document['lastname'].', '))?><?=esc($document['firstname'].' ')?>               
                <?php endif ?>         
        </td>
        <td> <?=ucwords($document['student_status'])?> </td>
        <td> <?=$document['year_graduated'] != null ? $document['year_graduated'] : 'N/A'?> </td>
        <td> <?=$document['abbreviation']?> </td>
        <td> <?=date('M d, Y', strtotime(esc($document['confirmed_at'])))?> </td>
        <td> <?=date('M d, Y', strtotime(esc($document['printed_at'])))?> </td>
        <td>
            <?php $date1 = strtotime(esc($document['confirmed_at'])) ?>
            <?php $date2 = strtotime(esc($document['printed_at'])) ?>
            <?php
              $diff = abs($date2 - $date1);
              $years = floor($diff / (365*60*60*24));
              $months = floor(($diff - $years * 365*60*60*24) / (30*60*60*24));
              $days = floor(($diff - $years * 365*60*60*24 - $months*30*60*60*24)/ (60*60*24));
              $hours = floor(($diff - $years * 365*60*60*24 - $months*30*60*60*24 - $days*60*60*24) / (60*60));
              $minutes = floor(($diff - $years * 365*60*60*24 - $months*30*60*60*24 - $days*60*60*24 - $hours*60*60)/ 60);
              $seconds = floor(($diff - $years * 365*60*60*24  - $months*30*60*60*24 - $days*60*60*24 - $hours*60*60 - $minutes*60));
            ?>
            <?php printf("%d days, %d hours, ". "%d minutes",$days, $hours, $minutes)?>
        </td>
        </tr>
      <?php $ctr++; ?>
    <?php endforeach; ?>
  <?php endif; ?>
</table>
