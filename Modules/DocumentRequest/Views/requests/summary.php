<br><br><br>
<table cellspacing="1" cellpadding="6" border="1"  width = "100%" style="font-family: timesnewroman">
  <tr style="text-align: center">
      <td><strong></sstrong>REGISTRATION AND ADMISSION OFFICE</strong><br /><i>SUMMARY REPORT</i><br /><b><i><?=esc(ucwords($types['t']))?> | <?=esc(ucwords($types['a']))?></i></b></td>
  </tr>
  <tr style="text-align: center;font-family: timesnewroman; background-color: #CCCCFF">
        <td width="20%"> <b># OF STUDENTS</b> </td>
    <td width="20%"> <b>ESTIMATED NUMBER OF DAYS TO PROCESS</b> </td>
    <td width="20%"> <b>DATE REQUESTED</b> </td>
    <td width="20%"> <b>DATE PRINTED</b> </td>
    <td width="20%"> <b>REMARKS</b> </td>
  </tr>
  <?php if (empty($documents)): ?>
    <tr>
      <td colspan="7" style="text-align: center;"> No Available Data </td>
    </tr>
  <?php else: ?>
    <?php $total = 0; ?>
    <?php foreach ($documents as $document): ?>
      <tr style="text-align: center;">
        <td> <?= $document['count'] ?> </td>
        <td>
          <?php
          $dtF = new \DateTime('@0');
          $dtT = new \DateTime('@'.$document['process_day']);
          echo $dtF->diff($dtT)->format('%a days, %h hours, %i minutes');
          ?>
        </td>
        <td> <?=date('F d, Y', strtotime($document['confirmed_at']))?> </td>
        <td> <?=date('F d, Y', strtotime($document['printed_at']))?> </td>
        <td> Within the Day </td>
      </tr>
      <?php $total += $document['count'] ?>
    <?php endforeach; ?>
    <tr style="background-color: #CCCCFF">
      <td align="center"><b><?=$total?></b></td>
      <td align="left"><b>Total</b></td>
      <td colspan="3" align="right"><b>Average Acted Upon Before the Deadline: Within the day = 5.0</b></td>
    </tr>
  <?php endif; ?>
</table>
