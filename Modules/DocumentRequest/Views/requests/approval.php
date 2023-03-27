
<div class="container-fluid">
    <div class="row">
        <div class="col-md-12">
            <div class="card m-2">
                <div class="card-body">
                    <p class="h4 mb-0"><b><?= ucwords($_SESSION['office'])?> <span class="h5"><b>(Clearance)</b></span></b></p>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12">
            <div class="card m-2">
                <div class="card-body">
                    <div class="row">
                    <?php if(session()->get('office') != 'HAP' && session()->get('office') != 'Student Services'):?>
                        <div class="table-responsive">
                            
                            <table class="table table-striped table-bordered mt-3 dataTable">
                                <thead>
                                    <tr>
                                        <th class="text-center">Name</th>
                                        <th class="text-center">Request Code</th>
                                        <th class="text-center">Date Requested</th>
                                        <th class="text-center">Gen. Clearance</th>
                                        <th class="text-center">Library</th>
                                        <th class="text-center">Laboratory</th>
                                        <th class="text-center">ROTC</th>
                                        <th class="text-center">Accounting Office</th>
                                        <th class="text-center">Internal Audit and Legal Office</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php foreach($requests as $request):?>
                                        <tr>
                                            
                                            <td><?=esc(ucwords($request['firstname'].'  ')) ?><?=esc($request['lastname'])?></td>
                                            <th><?= $request['slug'] ?></th>
                                            <td><?= $request['created_at'] ?></td>
                                            <th class="text-center">
                                                <a href="/approval/generate-clearance/<?= $request['id'] ?>" target="_blank"><u>View</u></a>
                                            </th>          
                                            <td class="text-center">
                                                <?php if(session()->get('office')=='Library'):?>
                                                    <button 
                                                        <?php if($request['library'] == 0):?>
                                                            onclick="approvePerOffices('/approval/apply-approval/edit/', 1, <?=$request['request_id']?>, <?=$request['id']?>, '<?=$request['slug']?>', '/approval');" 
                                                        <?php endif;?>
                                                        class="btn <?=$request['library']==0?'btn-warning':'btn-success'?> btn-sm rounded-pill"
                                                    >
                                                        <?php if($request['library'] == 0):?>
                                                            Pending
                                                        <?php else:?>
                                                            Cleared
                                                        <?php endif;?>
                                                    </button>
                                                <?php else: ?>
                                                    <?php if($request['library'] == 0):?>
                                                        <span class="badge rounded-pill bg-warning">Pending</span>
                                                    <?php else:?>
                                                        <span class="badge rounded-pill bg-success">Cleared</span>
                                                    <?php endif;?>
                                                <?php endif; ?>
                                            </td>
                                            <td class="text-center">
                                                <?php if(session()->get('office')=='Laboratory'):?>
                                                    <button
                                                        <?php if($request['laboratory'] == 0):?>
                                                            onclick="approvePerOffices('/approval/apply-approval/edit/', 2, <?=$request['request_id']?>, <?=$request['id']?>, '<?=$request['slug']?>', '/approval');" 
                                                        <?php endif;?>
                                                        class="btn <?=$request['laboratory']==0?'btn-warning':'btn-success'?> btn-sm rounded-pill" 
                                                    >
                                                        <?php if($request['laboratory'] == 0):?>
                                                            Pending
                                                        <?php else:?>
                                                            Cleared
                                                        <?php endif;?>
                                                    </button>
                                                <?php else: ?>
                                                    <?php if($request['laboratory'] == 0):?>
                                                        <span class="badge rounded-pill bg-warning">Pending</span>
                                                    <?php else:?>
                                                        <span class="badge rounded-pill bg-success">Cleared</span>
                                                    <?php endif;?>
                                                <?php endif; ?>
                                            </td>
                                            <td class="text-center">
                                                <?php if(session()->get('office') == "ROTC"):?>
                                                    <button 
                                                        <?php if($request['rotc'] == 0):?>
                                                            onclick="approvePerOffices('/approval/apply-approval/edit/', 3, <?=$request['request_id']?>, <?=$request['id']?>, '<?=$request['slug']?>', '/approval');" 
                                                        <?php endif;?>
                                                        class="btn <?=$request['rotc']== 0?'btn-warning':'btn-success'?> btn-sm rounded-pill"  
                                                    >
                                                        <?php if($request['rotc'] == 0):?>
                                                            Pending
                                                        <?php else:?>
                                                            Cleared
                                                        <?php endif;?>
                                                    </button>
                                                <?php else: ?>
                                                    <?php if($request['rotc'] == 0):?>
                                                        <span class="badge rounded-pill bg-warning">Pending</span>
                                                    <?php else:?>
                                                        <span class="badge rounded-pill bg-success">Cleared</span>
                                                    <?php endif;?>
                                                <?php endif; ?>
                                            </td>
                                            <td class="text-center">
                                                <?php if(session()->get('office')=='Accounting Office'):?>
                                                    <button 
                                                        <?php if($request['accounting_office'] == 0):?>
                                                            onclick="approvePerOffices('/approval/apply-approval/edit/', 4, <?=$request['request_id']?>, <?=$request['id']?>, '<?=$request['slug']?>', '/approval');" 
                                                        <?php endif;?>
                                                        class="btn <?=$request['accounting_office']==0?'btn-warning':'btn-success'?> btn-sm rounded-pill" 
                                                    >
                                                        <?php if($request['accounting_office'] == 0):?>
                                                            Pending
                                                        <?php else:?>
                                                            Cleared
                                                        <?php endif;?>
                                                    </button>
                                                <?php else: ?>
                                                    <?php if($request['accounting_office'] == 0):?>
                                                        <span class="badge rounded-pill bg-warning">Pending</span>
                                                    <?php else:?>
                                                        <span class="badge rounded-pill bg-success">Cleared</span>
                                                    <?php endif;?>
                                                <?php endif; ?>
                                            </td>
                                            <td class="text-center">
                                                <?php if(session()->get('office')=='Internal Audit'):?>
                                                    <button 
                                                        <?php if($request['internal_audit'] == 0):?>
                                                            onclick="approvePerOffices('/approval/apply-approval/edit/', 5, <?=$request['request_id']?>, <?=$request['id']?>, '<?=$request['slug']?>', '/approval');" 
                                                        <?php endif;?>
                                                        class="btn <?=$request['internal_audit']==0?'btn-warning':'btn-success'?> btn-sm rounded-pill" 
                                                    >
                                                        <?php if($request['internal_audit'] == 0):?>
                                                            Pending
                                                        <?php else:?>
                                                            Cleared
                                                        <?php endif;?>
                                                    </button>
                                                <?php else: ?>
                                                    <?php if($request['internal_audit'] == 0):?>
                                                        <span class="badge rounded-pill bg-warning">Pending</span>
                                                    <?php else:?>
                                                        <span class="badge rounded-pill bg-success">Cleared</span>
                                                    <?php endif;?>
                                                <?php endif; ?>
                                            </td>
                                        </tr>
                                    <?php endforeach;?>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <?php endif;?>
                </div>
                <?php if(session()->get('office') == 'HAP' || session()->get('office') == 'Student Services'): ?>
                    <h4>Current Function</h4>   
                    <a href="<?php echo base_url('document-requests'); ?>" class="btn btn-primary">Good Moral Requests</a>

                                
                        <?php endif;?>
            </div>
        </div>
    </div>
</div>
