<?php
include "partials/header.php";
?>
<div id="content-wrapper">

    <div class="container mt-5">
        <!-- DataTables Example -->
        <div class="card mb-3">
            <div class="card-header">
                <i class="fas fa-table"></i>
                Data Table Example</div>
            <div class="card-body">
                <div class="table-responsive">
                    <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                        <thead>
                            <tr>
                                <th>Image</th>
                                <th>Options</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php
                            foreach ($pictures as $picture) : ?>
                                <tr>
                                    <td>
                                        <img src="<?php echo URL::asset('assets/images/') . '/' . $picture->name; ?>" alt="<?php echo $picture->name; ?> " width="400" height="200">
                                        <p id="caption_<?php echo $picture->picture; ?>">CAPTION: <?php echo $picture->caption; ?></p>
                                        <p class="location">LOCATION ON WEBSITE: <?php echo $picture->location; ?></p>
                                    </td>
                                    <td>
                                        <button class="btn btn-primary" onclick="showRename(this)">CHANGE CAPTION</button>
                                        <div class="form">
                                            <input type="text" name="" id="" placeholder="New caption">
                                            <button class="btn btn-success" onclick="renameImage(<?php echo $picture->picture; ?>, this.previousElementSibling)">UPDATE</button>
                                        </div>
                                        <br>
                                        <hr>
                                        <?php
                                            if($picture->location == "slider"){
                                                echo "<button onclick = 'moveImage($picture->picture)' class='btn btn-info'>Remove from slider</button>";
                                            }else{
                                                echo "<button onclick = 'moveImage($picture->picture)' class='btn btn-info'>Add to slider</button>";
                                            } 
                                        ?>
                                        <br>
                                        <hr>
                                        <button class="btn btn-danger" id="delete" onclick="deleteImage(<?php echo $picture->picture; ?>, this.parentNode.parentNode)">DELETE IMAGE</button>
                                        </td>
                                </tr>
                            <?php endforeach; ?>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>

    </div>
    <!-- /.container-fluid -->
</div>
<!-- /.content-wrapper -->
</div>
<script>

    const showRename = (button) => {
        button.nextElementSibling.style.display = "block";
        button.style.display = "none";
    }
    const renameImage = (id, input) => {
        if (!input.value)  {
            alert("Cannot be empty")
        } else {
            fetch('/rename', {
                method: 'post',
                headers: {
                'Content-type': 'application/json'
                },
                body: JSON.stringify({
                                        id:id,
                                        caption: input.value
                                    })
            }).then(response => {
                return response.text();
            }).then(data =>{
                if(data == "success"){
                    input.parentNode.style.display = "none";
                    input.parentNode.previousElementSibling.style.display = "block";
                    document.querySelector(`#caption_${id}`).innerHTML = `CAPTION: ${input.value}`;
                }else{
                    console.log("not successful");
                }
            }).catch(err =>console.log(err));
        }
    };
    const deleteImage = (id, row) => {
        if(confirm("You are about to delete this image")){
            fetch('/delete', {
                method: 'post',
                headers: {
                'Content-type': 'application/json'
                },
                body: JSON.stringify({
                                        id:id,
                                    })
            })
                .then(response =>{
                    return response.text();
                })
                .then(data => {
                    if(data == "deleted"){
                        row.style.display = "none";    
                    }
                })
                .catch(err =>console.error(err));

        }
    };

    const moveImage = id => {
        fetch('/move_image', {
                method: 'post',
                headers: {
                'Content-type': 'application/json'
                },
                body: JSON.stringify({
                                        id,
                                    })
            })
            .then(response => response.text())
            .then(data => {
                alert(`Image relocated to ${data}`)
                document.location.reload();
            })
            .catch(err =>console.error(err));

    }
    
</script>
<!-- /#wrapper -->
<?php
include "partials/footer.php";
