<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
  <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Detail Interface <?php echo $det_if[0]['nama_interface']; ?>
        <small></small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Perangkat</a></li>
        <li class="">Data Perangkat</li>
        <li class="active">Detail Perangkat</li>
      </ol>
    </section>
    <section class="content">
      <!-- Small boxes (Stat box) -->
      <div class="row">
        <div class="col-lg-12 col-xs-12">
          <div class="box-body">

            <?php 
              print_r($id['id_per']."<br>");
              if ($cek_rrd==1){
                echo "<br><a href='".base_url()."index.php/welcome/add_rrd?id_if=".$id['id_if']."&id_per=".$id['id_per']."' class='btn btn-danger'>Reset</a>";
              } else {
                echo "<br><a href='".base_url()."index.php/welcome/add_rrd?id_if=".$id['id_if']."&id_per=".$id['id_per']."' class='btn btn-primary'>Add Database</a>";
              }
            ?>
            <!-- -->
            <!-- <div id="chartContainer" style="height: 300px; width:100%;"></div> -->
            <!-- -->
            <!-- <div id="chart" class="c3"></div> -->
            <!-- <div id="chart" class="c3"></div> -->
          </div>
        </div>
      </div>
    </section>
</div><!-- /.content-wrapper -->

 <script>
      // var chart = c3.generate({
      //   data: {
      //     x: 'x',
      //     columns: [
      //       ['x', '2012-12-29', '2012-12-30', '2012-12-31'],
      //       ['data1', 230, 300, 330],
      //       ['data2', 190, 230, 200],
      //       ['data3', 90, 130, 180],
      //     ],
      //     type: 'spline'
      //   },
      //   axis: {
      //     x: {
      //       type: 'timeseries',
      //       tick: {
      //         format: '%m/%d',
      //       }
      //     }
      //   }
      // });

      // setTimeout(function () {
      //   chart.flow({
      //     columns: [
      //       ['x', '2013-01-11', '2013-01-21'],
      //       ['data1', 500, 200],
      //       ['data2', 100, 300],
      //       ['data3', 200, 120],
      //     ],
      //     duration: 1500,
      //   });
      // }, 1000);
    </script>