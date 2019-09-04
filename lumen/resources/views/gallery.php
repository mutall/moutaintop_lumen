<?php
include 'partials/header.php';
include 'partials/nav.php';?>

<div class="container-fluid">
    <div id="nanogallery2" data-nanogallery2 = '{
                        "thumbnailHeight":  300,
                        "thumbnailWidth":   "auto"
                      }' >
    <?php foreach ($images as $key) {?>
        <a
            href = "<?php echo URL::asset('assets/images/') . '/' . $key->name; ?>"
             data-ngThumb = "<?php echo URL::asset('assets/images/') . '/' . $key->name; ?>" >
             <?php echo $key->caption; ?>
        </a>
    <?php }?>
    </div>
</div>
<?php include 'partials/footer.php';?>
