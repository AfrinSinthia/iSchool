<?php
  include('./dbConnection.php');
  // Header Include from mainInclude 
  include('./mainInclude/header.php'); 
?>  
<div class="container-fluid bg-dark"> <!-- Start Course Page Banner -->
  <div class="row">
    <img src="./image/coursebanner.jpg" alt="courses" style="height:200px; width:100%; object-fit:cover; box-shadow:10px;"/>
  </div> 
</div> <!-- End Course Page Banner -->

<div class="container mt-5"> <!-- Start All Course -->
  <?php
    if(isset($_GET['course_id'])){
      $course_id = $_GET['course_id'];
      $_SESSION['course_id'] = $course_id;
      $stuEmail = $_SESSION['stuLogEmail'];
      $sql = "SELECT * FROM courseorder WHERE course_id = '$course_id' AND stu_email = '$stuEmail' AND pay_status = 'Successful'" ;
      $result = $conn->query($sql);
      if($result->num_rows > 0){
        $sql = "SELECT * FROM course WHERE course_id = '$course_id'";
        $result = $conn->query($sql);
        if($result->num_rows > 0){ 
        while($row = $result->fetch_assoc()){
          echo ' 
            <div class="row">
            <div class="col-md-4"><br>
              <img src="'.str_replace('..', '.', $row['course_img']).'" class="card-img-top" alt="'.$row['course_name'].'" />
            </div>
            <div class="col-md-8">
              <div class="card-body">
                <h5 class="card-title">Course Name: '.$row['course_name'].'</h5>
                <p class="card-text"> <small><b>Instructor: '.$row['course_author'].'</b></small></p>
                <p class="card-text"> Description: '.$row['course_desc'].'</p>
                <p class="card-text"> Duration: '.$row['course_duration'].'</p>
                <form action="student/myCourses.php" method="post">
                  <p class="card-text d-inline">Price: <small><del><b>&#2547</b> '.$row['course_original_price'].'</del></small> <span class="font-weight-bolder"><b>&#2547</b> '.$row['course_price'].'<span></p>
                  <button type="submit" class="btn btn-primary text-white font-weight-bolder float-right" name="buy">Already Purchased</button>
                </form>
              </div>
            </div>
            </div>
          ';
        }
      }
    } else{
      $sql = "SELECT * FROM course WHERE course_id = '$course_id'";
      $result = $conn->query($sql);
      if($result->num_rows > 0){ 
        while($row = $result->fetch_assoc()){
          echo ' 
            <div class="row">
            <div class="col-md-4"><br>
              <img src="'.str_replace('..', '.', $row['course_img']).'" class="card-img-top" alt="'.$row['course_name'].'" />
            </div>
            <div class="col-md-8">
              <div class="card-body">
                <h5 class="card-title">Course Name: '.$row['course_name'].'</h5>
                <p class="card-text"> <small><b>Instructor: '.$row['course_author'].'</b></small></p>
                <p class="card-text"> Description: '.$row['course_desc'].'</p>
                <p class="card-text"> Duration: '.$row['course_duration'].'</p>
                <form action="checkout.php" method="post">
                  <p class="card-text d-inline">Price: <small><del><b>&#2547</b> '.$row['course_original_price'].'</del></small> <span class="font-weight-bolder"><b>&#2547</b> '.$row['course_price'].'<span></p>
                  <input type="hidden" name="id" value='. $row["course_price"] .'>
                  <button type="submit" class="btn btn-primary text-white font-weight-bolder float-right" name="buy">Buy Now</button>
                </form>
              </div>
            </div>
            </div>
          ';
        }
      }
    }
  }
  ?>   
</div><!-- End All Course --> 
  <div class="container">
      <div class="row">
      <?php $sql = "SELECT * FROM lesson";
            $result = $conn->query($sql);
            if($result->num_rows > 0){
      echo '
        <table class="table table-bordered table-hover">
          <thead>
            <tr>
              <th scope="col">Lesson No.</th>
              <th scope="col">Lesson Name</th>
              <th scope="col">Lesson Description</th>
            </tr>
          </thead>
          <tbody>';
          $num = 0;
          while($row = $result->fetch_assoc()){
          if($row['course_id'] == $course_id) {
            $num++;
          echo ' <tr>
            <th scope="row">'.$num.'</th>
            <td>'. $row["lesson_name"].'</td>
            <td>'. $row["lesson_desc"].'</td></tr>';
          }
          }
          echo '</tbody>
        </table>';
        } ?>         
    </div>
  </div>  
<?php 
  // Footer Include from mainInclude 
  include('./mainInclude/footer.php'); 
?>  
