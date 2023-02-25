<br>
<h1 style = "font-weight: bold;">REGISTRATION OFFICE</h1>
<h2>Summary Report of Registrar's Dashboard</h2>
<strong>Date:</strong> <?php echo  date("m/d/Y") ?> <strong>Time:</strong> <?php echo date("h:i:sa")?><br><br>



<table cellspacing="1" cellpadding="6" border="1"  width = "100%">
  <tr style="text-align: center;">
    <td width="25%"> <b>Pending Request</b> </td>
    <td width="25%"> <b>On Process Documents</b> </td>
    <td width="25%"> <b>Ready To Claim</b> </td>
    <td width="25%"> <b>Completed Request</b> </td>
   
  </tr>
      <tr style="text-align: center;">
        <td> <?=esc($request_count)?> </td>
        <td>  <?=esc($detail_count)?></td>
        <td> <?=esc($claim_count)?> </td>
        <td> <?=esc($completed_count)?> </td>
    
    </tr>
     
   

</table>

