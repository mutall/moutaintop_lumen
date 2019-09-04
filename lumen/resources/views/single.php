<?php include 'partials/header.php';
include 'partials/nav.php';?>
<div class="container">
<div class="jumbotron">
    <img src="<?php echo URL::asset('assets/images/places') . '/' . $itinerary->image ?>" alt="" >
  <h1 class="display-4"><?php echo $itinerary->title; ?></h1>
  <hr class="style-seven">
  <p><?php echo $itinerary->description; ?></p>
  <!--<p class="lead">-->
  <!--  <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">BOOK</button>-->
  <!--</p>-->
</div>
</div>



<div id="myModal" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <h4 class="modal-title">BOOK THIS ITINERARY</h4>
        <button type="button" class="close" data-dismiss="modal">&times;</button>
      </div>
      <div class="modal-body">
        <p>Some text in the modal.</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div>

  </div>
</div>
<?php include 'partials/footer.php';