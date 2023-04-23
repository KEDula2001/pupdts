<?php
        ob_end_clean();
        header_remove();
        
        //$image_file = K_PATH_IMAGES . 'landscape-header.jpg';
        //$imageY = $this->GetPageHeight() - PDF_MARGIN_TOP - 40;
        //$this->Image($image_file, 0, 0, $this->GetPageWidth(), 40);

?>
<br><br><br>
<table cellspacing="0" cellpadding="5" border="1" style="width: 100% ; font-family: timesnewroman">
  <tr style="text-align: center">
      <td><strong></sstrong>REGISTRATION AND ADMISSION OFFICE</strong><br /><i>DETAILED REPORT OF CLAIMED DOCUMENT REQUESTS</i><br /><b><i><?=esc(ucwords($types['t']))?> | <?=esc(ucwords($types['a']))?></i></b></td>
  </tr>
  <tr style="text-align: center;font-family: timesnewroman; background-color: #CCCCFF">
    <td width="10%"> <b>#</b> </td>
    <td width="30%"> <b>NAME</b> </td>
    <!--<td width="14%"> <b>STATUS</b> </td>
    <td width="10%"> <b>YEAR GRADUATED</b> </td>
    <td width="10%"> <b>COURSE</b> </td>        -->
    <td width="20%"> <b>DATE REQUESTED</b> </td>
    <td width="20%"> <b>DATE PRINTED</b> </td>
    <td width="20%"> <b>NUMBER OF DAYS PROCESSED</b> </td>
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
        <!--<td> <?=ucwords($document['student_status'])?> </td>
        <td> <?=$document['year_graduated'] != null ? $document['year_graduated'] : 'N/A'?> </td>
        <td> <?=$document['abbreviation']?> </td>       -->
        <td> <?=date('M d, Y', strtotime(esc($document['confirmed_at'])))?> </td>
        <td> <?=date('M d, Y', strtotime(esc($document['printed_at'])))?> </td>
        <td>
            <?php $startTimeStamp = strtotime(esc($document['confirmed_at'])) ?>
            <?php $endTimeStamp = strtotime(esc($document['printed_at'])) ?>
            
            <?php $timeDiff = abs($endTimeStamp - $startTimeStamp) ?>
            
            <?php $numberDays = $timeDiff/86400; ?>
           
            <?php $numberDays = intval($numberDays) ?>
            
            <?= ($numberDays == 0 || $numberDays < 0 ? "Within the day" : $numberDays. " day(s)") ?>
        </td>
        </tr>
      <?php $ctr++; ?>
    <?php endforeach; ?>
  <?php endif; ?>
</table>
