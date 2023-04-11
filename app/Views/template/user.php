<nav class="navbar navbar-expand-lg">
  <div class="container">
  <img src="<?=base_url()?>/img/pupt-logo.png" alt="">

    <a class="navbar-brand" href="/<?=$_SESSION['landing_page']?>">
      PUP TAGUIG | OCT-DRS
    </a>
    <div class="navbar-nav ms-auto">
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#main_nav" aria-controls="main_nav" aria-expanded="false" aria-label="Toggle navigation">
            Menu
            <span class="navbar-toggler-icon btn-sm">
        </button>
        <div class="collapse navbar-collapse" id="main_nav">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0" style="background-color: #800000;">
                <li class="nav-item dropdown dropdown-parent">
                    <a class="nav-link dropdown-toggle" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">Registrar</a>
                    <ul class="dropdown-menu dropdown-menu-child" aria-labelledby="navbarDropdown" style="background-color: #800000;">
                        <?php foreach ($allPermissions as $permission): ?>
                            <?php if ($permission['type_slug'] == 'view'): ?>
                                <li class="nav-item">
                                    <a class="nav-link sideLink active" href="<?=esc(base_url(esc($permission['path'])))?>"><?=esc(ucwords($permission['permission']))?></a>
                                </li>
                            <?php endif; ?>
                        <?php endforeach; ?>
            
                        <li class="nav-item">
                            <a class="nav-link sideLink" href="/requests/new">Request document</a>
                        </li>
                    </ul>
                </ul>

        <div class="collapse navbar-collapse" id="main_nav">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0" style="background-color: #800000;">
                <li class="nav-item dropdown dropdown-parent">
                  <a class="nav-link dropdown-toggle" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">Admission</a>
                    <ul class="dropdown-menu dropdown-menu-child" aria-labelledby="navbarDropdown" style="background-color: #800000;">
       
        <li class="nav-item">
            <a class="nav-link sideLink active" href="<?php echo base_url ('studentadmission/view-admission-history/'.$_SESSION['user_id']); ?>">Credentials Record</a>
        </li>

          <li class="nav-item">
            <a class="nav-link sideLink" href="<?php echo base_url ('studentadmission/admission-gallery/'.$_SESSION['user_id']); ?>">Credentials Gallery</a>
          </li>

          <li class="nav-item">
          <a class="nav-link sideLink active" href="<?=esc(base_url('form-137'))?>">Form 137 Form</a>
        </li>
      </ul>
      </ul>
   <!-- <div class="collapse navbar-collapse" id="navbarSupportedContent"> -->
     
      <ul class="navbar-nav logout">
          <li class="nav-item dropdown dropdown-parent">
              <a class="nav-link dropdown-toggle" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                  <i class="far fa-user-circle"></i> <?=esc($_SESSION['name'])?>
              </a>
              <ul class="dropdown-menu dropdown-menu-child" aria-labelledby="navbarDropdown">
                  <!-- <li><hr class="daxropdown-divider"></li> -->
                  <li><a class="dropdown-item" style="color: black;"  href="#" id="passwordModal" data-bs-toggle="modal" data-bs-target="#passwordForm" ><i class="fas fa-lock"></i> Change Password</a></li>
                  <li><a class="dropdown-item" style="color: black;"  href="/logout"><i class="fas fa-sign-out-alt"></i> Logout</a></li>
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

<div id="passwordContainer">
  <?= view('userTemplate/passwordForm') ?>
</div>
