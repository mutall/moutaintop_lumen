<?php include 'partials/header.php';
include 'partials/nav.php';
?>

<div class="container">
    <?php foreach ($itinerary as $key) {?>
        <div class="card mb-3">
                <div class="d-flex flex-row ">
                    <div class="card-image">
                    <img src="<?php echo URL::asset('assets/images/places') . '/' . $key->image ?>" alt="" srcset="">
                    </div>
                    <div class="card-body">
                        <div class="card-title text-center"><h2><?php echo $key->title; ?></h2></div>
                        <div class="card-text"><?php echo mb_strimwidth($key->description, 0, 200, '...'); ?>
                            <a href="/index.php/tours/single/<?php echo $key->itinerary; ?>" class="btn btn-primary">READ MORE</a>
                        </div>
                    </div>
                </div>
            </div>
    <?php }?>
</div>

<?php include 'partials/footer.php';