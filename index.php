 
<?php
session_start();
if(!isset($_SESSION['login'])){
    header('location:login.php');
}

include "koneksi.php";
include "header.php"
?>


  
      
                <!-- /Widgets -->
                <div class="content">
            <div class="animated fadeIn">

             <div class="row">
                <div class="col-lg-8">
                    <div class="card">
                        <div class="card-header">
                            <h4>World</h4>
                        </div>
                        <div class="Vector-map-js">
                            <div id="vmap" class="vmap"></div>
                        </div>
                    </div>
                    <!-- /# card -->
                </div>
                <!-- /# column -->

                
                         
                         <div class="col-xl-4">
                            <div class="row">
                                <div class="col-lg-6 col-xl-12">
                                    <!-- <h4 class="box-title">Chandler</h4> -->
                                <div class="calender-cont widget-calender">
                                    <div id="calendar"></div>
                                </div>
                            </div>
                        </div><!-- /.card -->
                    </div>
                     <!-- /# column -->
                   
                        


              
                        
                

                       
        


<?php include "footer.php" ?>