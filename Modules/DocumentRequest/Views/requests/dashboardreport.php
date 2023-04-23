<br><br><br><br><br>

<table cellspacing="1" cellpadding="6" border="1"  width = "100%">
  <tr style="text-align: center; font-family: timesnewroman; font-size: 15px">
      <td><strong></sstrong>REGISTRATION AND ADMISSION OFFICE</strong><br /><i>SUMMARY LIST OF DASHBOARD</i><br /><b><i><?php echo date("F d, Y"); ?></i></b></td>
  </tr>
  <tr style="text-align: center;font-family: timesnewroman; background-color: #CCCCFF">
    <td width="25%"> <b>PENDING REQUESTS</b> </td>
    <td width="25%"> <b>ON PROCESS DOCUMENTS</b> </td>
    <td width="25%"> <b>READY TO CLAIM</b> </td>
    <td width="25%"> <b>CLAIMED REQUESTS</b> </td>
   
  </tr>
      <tr style="text-align: center;font-family: timesnewroman">
        <td> <?=esc($request_count)?> </td>
        <td> <?=esc($detail_count)?></td>
        <td> <?=esc($claim_count)?> </td>
        <td> <?=esc($completed_count)?> </td>
    
    </tr>
</table>

