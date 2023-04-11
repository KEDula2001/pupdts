<?php

$routes->group('requests', ['namespace' => 'Modules\DocumentRequest\Controllers'], function($routes)
{
    $routes->get('/', 'Requests::index');
    $routes->delete('delete/(:num)', 'Requests::delete/$1');
    $routes->get('stub/(:num)', 'Requests::stub/$1');
    $routes->get('history', 'Requests::history');
    $routes->post('upload-receipt', 'Requests::uploadReceipt');
    $routes->match(['get', 'post'], 'new', 'Requests::add');
    $routes->match(['get', 'post'], 'additional-info/(:num)', 'Requests::addInfo/$1');
    $routes->match(['get', 'post'], 'findslug', 'Requests::findslug');
    
});

$routes->group('document-requests', ['namespace' => 'Modules\DocumentRequest\Controllers'], function($routes)
{
    $routes->get('/', 'DocumentRequests::index');
    $routes->post('request-confirm', 'DocumentRequests::confirmRequest');
    $routes->post('deny-request', 'DocumentRequests::denyRequest');
    $routes->get('goodmoral/(:num)', 'DocumentRequests::goodmoral/$1');
    $routes->get('nstpcwts/(:num)', 'DocumentRequests::nstpcwts/$1');
    $routes->get('certgwa/(:num)', 'DocumentRequests::certgwa/$1');
    $routes->get('clearance/(:num)', 'DocumentRequests::clearance/$1');
    $routes->get('certsteno/(:num)', 'DocumentRequests::certsteno/$1');
    $routes->get('ReadmissionCert/(:num)', 'DocumentRequests::ReadmissionCert/$1');
    $routes->get('waiverunderprob/(:num)', 'DocumentRequests::waiverunderprob/$1');
    $routes->get('rasreadmission/(:num)', 'DocumentRequests::rasreadmission/$1');
    $routes->get('rasladderized/(:num)', 'DocumentRequests::rasladderized/$1');
    
    $routes->get('CertficateforUndergratuateProbation/(:num)', 'DocumentRequests::CertficateforUndergratuateProbation/$1');
    $routes->get('certregularunitscourse/(:num)', 'DocumentRequests::certregularunitscourse/$1');
    $routes->get('certofregunitsAdSubject/(:num)', 'DocumentRequests::certofregunitsAdSubject/$1');
    $routes->get('certmediumundergrat/(:num)', 'DocumentRequests::certmediumundergrat/$1');
    $routes->get('certmedium/(:num)', 'DocumentRequests::certmedium/$1');
    $routes->get('certofenrollmentpresent/(:num)', 'DocumentRequests::certofenrollmentpresent/$1');
    $routes->get('certofenrolleecross/(:num)', 'DocumentRequests::certofenrolleecross/$1');
    $routes->get('certofEnrollmentUndergrad/(:num)', 'DocumentRequests::certofEnrollmentUndergrad/$1');
    

    
    $routes->get('requestforNameBirthdate/(:num)', 'DocumentRequests::requestforNameBirthdate/$1');
    $routes->get('certificateofgrades/(:num)', 'DocumentRequests::certificateofgrades/$1');
    $routes->get('certificateofladderize/(:num)', 'DocumentRequests::certificateofladderize/$1');
    $routes->get('certRegUnitsAdSub/(:num)', 'DocumentRequests::certRegUnitsAdSub/$1'); 
    $routes->get('certRegUnitsAdSubBrid/(:num)', 'DocumentRequests::certRegUnitsAdSubBrid/$1');
    
});

$routes->group('payment', ['namespace' => 'Modules\DocumentRequest\Controllers'], function($routes)
{
    $routes->get('/', 'DocumentRequests::payment');
});

$routes->group('form-137', ['namespace' => 'Modules\DocumentRequest\Controllers'], function($routes)
{
    $routes->match(['post', 'get'], '/', 'DocumentRequests::addForm');
    $routes->get('(:num)', 'DocumentRequests::form/$1');
    $routes->get('requests', 'DocumentRequests::formRequests');
    $routes->post('accept-form', 'DocumentRequests::acceptForm');
    $routes->post('receive-form', 'DocumentRequests::receiveForm');
});

$routes->group('paid', ['namespace' => 'Modules\DocumentRequest\Controllers'], function($routes)
{
    $routes->get('/', 'DocumentRequests::paid');
    $routes->post('accept-request', 'DocumentRequests::acceptPaid');
    $routes->post('deny-request', 'DocumentRequests::denyPaid');

});

$routes->group('on-process-document', ['namespace' => 'Modules\DocumentRequest\Controllers'], function($routes)
{
    $routes->get('/', 'DocumentRequests::onProcess');
    $routes->get('filter', 'DocumentRequests::filterOnProcess');
    $routes->post('print-requests', 'DocumentRequests::printRequest');
});

$routes->group('approval', ['namespace' => 'Modules\DocumentRequest\Controllers'], function($routes)
{
    $routes->get('/', 'DocumentRequests::approval');
    $routes->get('generate-clearance/(:num)', 'DocumentRequests::generateClearance/$1');
    $routes->get('generate-clearance/(:num)/(:num)', 'DocumentRequests::generateClearance/$1/$2');
    $routes->post('approve', 'DocumentRequests::approveRequest');
    $routes->post('hold', 'DocumentRequests::holdRequest');
    $routes->get('apply-approval/edit/(:num)/(:num)/(:num)', 'DocumentRequests::applyApproval/$1/$2/$3');
});


$routes->group('printed-requests', ['namespace' => 'Modules\DocumentRequest\Controllers'], function($routes)
{
    $routes->get('/', 'DocumentRequests::printed');
    $routes->get('get-report', 'DocumentRequests::doctoclaimreport');
    $routes->get('filter', 'DocumentRequests::filterPrinted');
    $routes->get('get-printed', 'DocumentRequests::getPrinted');
    $routes->post('scan', 'DocumentRequests::claimRequest');
});

$routes->group('claimed-requests', ['namespace' => 'Modules\DocumentRequest\Controllers'], function($routes)
{
    $routes->get('/', 'DocumentRequests::claimed');
    $routes->get('filter', 'DocumentRequests::claimFilter');
    $routes->get('report', 'DocumentRequests::report');

});

$routes->group('completed', ['namespace' => 'Modules\DocumentRequest\Controllers'], function($routes)
{
    $routes->get('/', 'DocumentRequests::completed');

});
//----November 2022
//----BSIT COURSE
$routes->group('bsit-course', ['namespace' => 'Modules\DocumentRequest\Controllers'], function($routes)
{
    $routes->get('/', 'DocumentRequests::bsitcourse');
    
});
$routes->group('bsece-course', ['namespace' => 'Modules\DocumentRequest\Controllers'], function($routes)
{
    $routes->get('/', 'DocumentRequests::bsececourse');
    
});
$routes->group('bsme-course', ['namespace' => 'Modules\DocumentRequest\Controllers'], function($routes)
{
    $routes->get('/', 'DocumentRequests::bsmecourse');
    
});


