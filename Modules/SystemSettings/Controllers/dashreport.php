<br>
<h2>Trend Report</h2>
<table cellspacing="0" cellpadding="5" border="1">
  <tbody>
        <tr style="text-align: center;">
          <td width="15%"><b>Status</b></td>
          <td width="15%"><b>#</b></td>
        </tr>
      
        <tr style="text-align: center;">
          <td class="bold">Pending Requests</td>
          <td> <?=esc($request_count)?> </td>
        </tr>

        <tr style="text-align: center;">
          <td class="bold">On Process Documents</td>
          <td> <?=esc($detail_count)?> </td>
        </tr>

        <tr style="text-align: center;">
          <td class="bold">Ready to Claim</td>
          <td> <?=esc($claim_count)?> </td>
        </tr>

        <tr style="text-align: center;">
          <td class="bold">Completed Requests</td>
          <td> <?=esc($completed_count)?> </td>
        </tr>
</table>
