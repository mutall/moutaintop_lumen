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
                                <th>name</th>
                                <th>Location</th>
                                <th>Options</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php
                            foreach ($pictures as $picture) : ?>
                                <tr>
                                    <td><img src="<?php echo URL::asset('assets/images/') . '/' . $picture->name; ?>" alt="<?php echo $picture->name; ?> " width="400" height="200"></td>
                                    <td><?php echo $picture->caption; ?></td>
                                    <td><?php echo $picture->location; ?></td>
                                    <td>
                                        <button id="rename" onclick="showRename(this)">RENAME</button>
                                        <div id="form">
                                            <input type="text" name="" id="" placeholder="New caption">
                                            <button onclick="renameImage(<?php echo $picture->picture; ?>, this.previousElementSibling)">UPDATE</button>
                                        </div>
                                        <br>
                                        <hr>
                                        <button id="delete" onclick="deleteImage(<?php echo $picture->picture; ?>)">DELETE</button>
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
        document.querySelector("#form").style.display = "block";
        button.style.display = "none";
    }
    const renameImage = (id, input) => {

        if (!input.value)  {
            alert("Cannot be empty")
        } else {
            fetch('/rename', {
                method: 'post',
                body: JSON.stringify({
                                        id,
                                        caption: input.value
                                    })
            }).then(response => {
                return response.text();
            }).then(data =>{
                if(data == "success"){
                    document.querySelector("#form").style.display = "none";
                    document.querySelector("#rename").style.display = "block";
                }else{
                    console.log("not successful");
                    
                }
            }).catch(err =>console.log(err));
        }
    };
    const deleteImage = (id) => {

    };
</script>
<!-- /#wrapper -->
<?php
include "partials/footer.php";
