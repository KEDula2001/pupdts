<br>
<h1 style = "font-weight: bold;">REGISTRATION AND ADMISSION OFFICE</h1>
<h2>Summary Report of Admission Credentials Submission Status</h2>
<strong>Date:</strong> <?php echo  date("m/d/Y") ?> <strong>Time:</strong> <?php echo date("h:i:sa")?><br><br>



<table cellspacing="1" cellpadding="6" border="1" width = "100%" >
  <tr style="text-align: center;">
    <td width="25%"> <b>Complete</b> </td>
    <td width="25%"> <b>Incomplete</b> </td>
    <td width="25%"> <b>For Rechecking</b> </td>
    <td width="25%"> <b>Retrieved</b> </td>
   
</tr>
      <tr style="text-align: center;">
        <td>  <?=esc(count($count_complete))?> </td>
        <td>  <?=esc(count($count_incomplete))?></td>
        <td>  <?=esc(count($count_recheck))?> </td>
        <td>  <?=esc(count($retrieved_record))?> </td>
    
    </tr>
</table>
