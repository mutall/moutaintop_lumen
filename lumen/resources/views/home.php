<?php
include 'partials/header.php';?>
<!--place the slider here -->
<div id="mountaintop" class="carousel slide" data-ride="carousel">
  <div class="carousel-inner">
      <div class="carousel-item active">
      <img class="center-crop d-block w-100" src="http://mountaintopsafarisadventures.co.ke/assets/images/slider1.jpg"
            alt="zebras">
      <div class="carousel-caption d-none d-md-block">
                <h5 class="caption-title">Zebras</h5>
                
        </div>
      </div>
    <?php
foreach ($slider as $key) {?>
        <div class="carousel-item">
            <img class="center-crop d-block w-100" src="<?php echo URL::asset('assets/images/'). '/'.$key->name; ?>"
            alt="<?php echo $key->name; ?>">

            <div class="carousel-caption d-none d-md-block">
                <h5 class="caption-title"><?php echo $key->caption ?></h5>
                
            </div>
            </div>

        <?php }
?>
  </div>
  <a class="carousel-control-prev" href="#mountaintop" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#mountaintop" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
<?php include 'partials/nav.php';?>



<div class="container">
    <div class="history my-5">
        <h4 class="text-center font-weight-bolder">HISTORY</h4>
        <p>Mountain Top Safaris is an indigenous company registered in Kenya in 2014. The company has grown over the years and has managed to combine the strong points of big and small companies to give better and efficient services. We have managed to lease a network of customers within and outside the country. We are located at Karen Shopping Centre, Tana House 1st Floor. Karen is one of the local hubs for Tourism with the growing population of expatriates, tourists and shoppers.</p>
    </div>
    <div class="choice">
        <h4 class="text-center font-weight-bolder">WHY CHOOSE US</h4>
        <div class="d-flex flex justify-content-around">
            <div class="item d-flex flex-column">
            <i class="far fa-calendar-check fa-2x mx-auto"></i>
            <h5 class="font-weight-bold text-center">MISSION</h5>
            <p>To serve the tours and travel world by providing the ultimate and unique experience with the best rates possible</p>
            </div>

            <div class="item d-flex flex-column">
            <i class="far fa-bell  fa-2x mx-auto"></i>
            <h5 class="font-weight-bold text-center">VISION</h5>
            <p>To be a leading tours and travels company that provides its clients with efficient services and satisfaction</p>
            </div>
        </div>
    </div>
    <div class="history my-5">
        <h4 class="text-center font-weight-bolder">ABOUT MOUNTAINTOP</h4>
        <p>Mountain Top Safaris is a well established Tour Company that specializes in offering programs in Kenya, Tanzania and Zanzibar. Our main focus is on quality services leading to a beautiful traveling experience with a better understanding of natural and Cultural history. Safety and comfort are our priority by providing services that are equal to none.
        </p><p>
Our processes are driven by world class practices across all service areas which enable us to provide the greatest value at the lowest risk. We pride ourselves as a specialized and focused provider of the best tourist destinations to our customers.</p>
    </div>

    <h5 class="text-center">PLACES TO VISIT</h5>
<section class="my-4">
    <div class="d-flex justify-content-around my-3">
        <?php 
        foreach ($places as $value) { ?>
            <img class="p-2 places-img" src="<?php echo URL::asset('assets/images/'). '/'.$value->name; ?>" alt="<?php echo $value->caption; ?>">
        <?php } ?>
        </div>
    <div class="container">
        <div class="row">
            <div class="col-sm"><hr></div>
            <div class="">OR</div>
            <div class="col-sm"><hr></div>
        </div>
    </div>

    <h5 class="text-center">SEARCH TOUR DESTINATION</h5>
    <div class="form-inline justify-content-center mt-4">
        <div class="form-group mx-sm-3 mb-2">
            <label for="location">DESTINATION</label>
            <input type="text" class="form-control mx-3" id="location" placeholder="eg..maasaimara">
<!--        </div>

        <div class="form-group mx-sm-3 mb-2">
            <label for="inputState">Country</label>
            <select id="inputState" class="form-control mx-3">
                <option selected>KENYA</option>
                <option>UGANDA</option>
                <option>TANZANIA</option>

            </select>
    </div>-->
        <button type="submit" class="btn query mb-2">Search</button>
    </div>
</section>
</div>
<?php
include 'partials/footer.php';?>