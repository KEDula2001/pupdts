<br>
<h1 style = "font-weight: bold;">REGISTRATION AND ADMISSION OFFICE</h1>
<h2>Summary Report of Admission Credentials Submission and Upload Status</h2>
<strong>DATE:</strong> <?php echo  date("m/d/Y") ?> <strong>TIME:</strong> <?php echo date("h:i:sa")?><br><br>



<table cellspacing="1" cellpadding="6" border="1" width = "100%" >
  <tr style="text-align: center;">
    <td> <b>Complete Submission</b> </td>
    <td> <b>Incomplete Submission</b> </td>
    <td> <b>For Rechecking</b> </td>
    <td> <b>Retrieved Credentials</b> </td>
    <td> <b>Incomplete Uploads Credentials</b> </td>
    <td> <b>Complete Uploads Credentials</b> </td>
   
</tr>
      <tr style="text-align: center;">
        <td>  <?=esc(count($count_complete))?> </td>
        <td>  <?=esc(count($count_incomplete))?></td>
        <td>  <?=esc(count($count_recheck))?> </td>
        <td>  <?=esc(count($retrieved_record))?> </td>
        <td>  <?=esc(count($count_incomplete_uploads))?></td>
        <td>  <?=esc(count($count_complete_uploads))?> </td>
    </tr>
</table>
