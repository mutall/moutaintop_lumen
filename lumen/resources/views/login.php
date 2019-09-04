<?php
include 'partials/header.php'; ?>
<?php
    if($err){ ?>
        <div class="alert alert-danger"><?php echo $err; ?></div>
    <?php }
?>
<div class="d-flex align-items-center justify-content-center content">
    <div class="card text-center">
        <div class="card-header">
            ADMIN LOGIN
        </div>
        <div class="card-body">
            <form action="/index.php/auth" method="post">
                <div class="form-group">
                    <input type="text" class="form-control" name="username" aria-describedby="emailHelp"
                        placeholder="Enter username">
                    <small id="emailHelp" class="form-text text-muted"></small>
                </div>
                <div class="form-group">
                    <input type="password" class="form-control" name="password"
                        placeholder="Password">
                </div>
                <div class="card-footer">
                    <button type="submit" class="btn btn-primary">Login</button>
                </div>
            </form>
        </div>
    </div>
</div>