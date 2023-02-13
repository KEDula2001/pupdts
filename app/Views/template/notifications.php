<?php if (session()->get('success_login')) : ?>
    <script type="text/javascript">
        alert_login_success('<?= session()->get('success_login') ?>');
    </script>
<?php endif; ?>

<?php if (session()->get('warning')) : ?>
    <script type="text/javascript">
        alert_warning('<?= session()->get('warning') ?>');
    </script>
<?php endif; ?>

<?php if (session()->get('success')) : ?>
    <script type="text/javascript">
        alert_success('<?= session()->get('success'); ?>');
    </script>
<?php endif; ?>

<?php if (session()->get('error')) : ?>
    <script type="text/javascript">
        alert_error('<?=session()->get('error') ?>');
    </script>
<?php endif; ?>