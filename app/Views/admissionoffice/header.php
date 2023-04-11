<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <link rel="icon" type="image/png" href="/img/pupt-logo.png">
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-wEmeIV1mKuiNpC+IOBjI7aAzPcEZeedi5yW5f2yOq55WWLwNGmvvx4Um1vskeMj0" crossorigin="anonymous">
    <link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdn.datatables.net/1.10.24/css/dataTables.bootstrap5.min.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.3/css/all.css" integrity="sha384-SZXxX4whJ79/gErwcOYf+zWLeJdY/qpuqC4cAa9rOGUstPomtqpuNWT9wdPEn2fk" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@sweetalert2/theme-bootstrap-4@4.0.5/bootstrap-4.min.css">
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/v/bs4/dt-1.10.23/sl-1.3.1/datatables.min.css"/>
    <link rel="stylesheet" href="<?php echo base_url('css/student/student.css'); ?>">
    
    
    <title>OCT-DRS</title>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>

  </head>
  <main class="page-content" id="content">
    <nav class="navbar navbar-expand-lg">
      <div class="container-fluid">
          <img src="<?php echo base_url('img/pupt-logo.png'); ?>" alt=" ">
          <!-- hindi ko alam bakit sa isang page hindi nagview ang logo hmpk -->
          <a href="<?php echo base_url('admission'); ?>" class="align-middle"> 
              PUP Taguig | ONLINE CREDENTIALS TRACKING SYSTEM
          </a>
          <div class="navbar-nav ms-auto">
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#main_nav" aria-controls="main_nav" aria-expanded="false" aria-label="Toggle navigation">
              Menu
                <span class="navbar-toggler-icon btn-sm">
            </button>
            <div class="dropdown float-end">
          <div class="collapse navbar-collapse" id="main_nav">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0" style="background-color: maroon;">
              <li class="nav-item dropdown d-flex">
                <?php if($_SESSION['role'] == "Admin"):?>
                  <a class="btn dashboard" href="<?=base_url('dashboards')?>">Registrar's Dashboard</a>
                <?php endif ?>
                <?php if($_SESSION['role'] == "Superadmin"):?>
                  <a class="btn dashboard" href="<?=base_url('users')?>">Superadmin Dashboard</a>
                <?php endif ?>
                <?php if($_SESSION['role'] == "HapAndSSO"):?>
                  <a class="btn dashboard" href="<?=base_url('/document-requests')?>">Back to Dashboard</a>
                <?php endif ?>
                
                <?php if($_SESSION['role'] == "Admin" || $_SESSION['role'] == "Admission"):?>
                    <div class="nav-item dropdown dropdown-parent">
                        <a class="nav-link dropdown-toggle" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">Home</a>
                        <ul class="dropdown-menu dropdown-menu-child" aria-labelledby="navbarDropdown">
                            <li><a class="dropdown-item" href="<?php echo base_url('admission'); ?>">Dashboard</a></li>
                            <li><a class="dropdown-item" href="<?php echo base_url('admission/add-student-form'); ?>">Add Student</a></li>                      
                        </ul>
                    </div>
                <?php endif ?>
                
                <?php if($_SESSION['role'] == "Admission"):?>
                    <div class="nav-item dropdown dropdown-parent">
                        <a class="nav-link dropdown-toggle" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">Document Request</a>
                        <ul class="dropdown-menu dropdown-menu-child" aria-labelledby="navbarDropdown">
                            <li><a class="dropdown-item" href="<?=base_url('form-137/requests')?>"> Form 137 Request</a></li>
                            <li><a class="dropdown-item" href="<?=base_url('/document-requests')?>"> Good Moral</a></li>
                        </ul>
                    </div>
                <?php endif ?>
                
                <?php if($_SESSION['role'] == "Admission" || $_SESSION['role'] == "Superadmin" || $_SESSION['role'] == "Admin"):?>
                    <div class="nav-item dropdown dropdown-parent">
                        <a class="nav-link dropdown-toggle" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">Manage Credentials</a>
                        <ul class="dropdown-menu dropdown-menu-child" aria-labelledby="navbarDropdown">
                            <li><a class="dropdown-item" href="/admission/complete">Complete Submission</a></li>
                            <li><a class="dropdown-item" href="/admission/incomplete">Incomplete Submission</a></li>
                            <li><a class="dropdown-item" href="/admission/retrieved-files">Retrieved Credentials</a></li>
                            <li><a class="dropdown-item" href="/admission/request-rechecking">Rechecking Credentials</a></li>
                            <li><a class="dropdown-item" href="/admission/completestudentupload">Complete Upload</a></li>
                            <li><a class="dropdown-item" href="/admission/incompletestudentupload">Incomplete Upload</a></li>
                        </ul>
                    </div>
                <?php endif ?>
                
                <ul class="navbar-nav logout">
                    <li class="nav-item dropdown dropdown-parent">
                      <a class="nav-link dropdown-toggle" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                        <i class="far fa-user-circle"></i> <?php echo $_SESSION['username'];?></a>
                        <ul class="dropdown-menu dropdown-menu-child" aria-labelledby="navbarDropdown">
                          <li><a class="dropdown-item" style="color: black;"  href="#" id="passwordModal" data-bs-toggle="modal" data-bs-target="#passwordForm" ><i class="fas fa-lock"></i> Change Password</a></li>
                          <li><a class="dropdown-item" href="/logout">Logout <i class="fas fa-sign-out-alt"></i></a></li>
                        </ul>
                    </li>
                </ul>
              
                <style>
                .dropdown-parent:hover .dropdown-menu-child {
                  display: block;
                }
                </style>
                
                <script>
                function showDropdown(dropdownId) {
                  var dropdown = document.getElementById(dropdownId);
                  dropdown.classList.add('show');
                }
                
                function hideDropdown(dropdownId) {
                  var dropdown = document.getElementById(dropdownId);
                  dropdown.classList.remove('show');
                }
                </script>
            </div>
          </div>
        </nav>
    </nav>
     <div id="passwordContainer">
    <?= view('userTemplate/passwordForm') ?>
    </div>
  </main>