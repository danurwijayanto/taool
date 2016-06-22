 
 <!-- Content Wrapper. Contains page content -->
      <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
          <h1>
            Dashboard
            <small>Network Management System UPPTI FSM UNDIP</small>
          </h1>
          <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
            <li class="active">Dashboard</li>
          </ol>
        </section>

        <!-- Main content -->
        <section class="content">
          <!-- Small boxes (Stat box) -->
          <div class="row">
            <div class="col-lg-3 col-xs-6">
              <!-- small box -->
              <div class="small-box bg-aqua">
                <div class="inner">
                  <h3><?php echo count($total_user);?></h3>
                  <p>Users</p>
                </div>
                <div class="icon">
                  <i class="ion ion-ios-person"></i>
                </div>
                <a href="<?php echo base_url()?>user/data_user" class="small-box-footer">Lihat Selengkapnya <i class="fa fa-arrow-circle-right"></i></a>
              </div>
            </div><!-- ./col -->
            <div class="col-lg-3 col-xs-6">
              <!-- small box -->
              <div class="small-box bg-green">
                <div class="inner">
                  <h3><?php echo count($total_device);?></h3>
                  <p>Perangkat</p>
                </div>
                <div class="icon">
                  <i class="ion ion-monitor"></i>
                </div>
                <a href="<?php echo base_url()?>device/data_perangkat" class="small-box-footer">Lihat Selengkapnya <i class="fa fa-arrow-circle-right"></i></a>
              </div>
            </div><!-- ./col -->
           
          </div><!-- /.row -->

          <div class="row">
            <div class="col-md-6">
              <div class="box box-warning">
                <div class="box-header with-border">
                  <h3 class="box-title">Bandwith brd920</h3>
                  <div class="box-tools pull-right">
                    <button class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
                  </div><!-- /.box-tools -->
                </div><!-- /.box-header -->
                <div class="box-body">
                <?php if (empty($bandbrd1[0]['id_rrd'])) {echo "Data Belum Terbentuk";} else { ?>
                 <img src="<?php echo base_url();?>/etc/rrdtools/gambar/<?php echo $bandbrd2[0]['id_rrd']?>_1d.gif" class="col-md-12">
                <?php } ?>
                </div><!-- /.box-body -->
              </div><!-- /.box -->
            </div><!-- /.col -->

            <div class="col-md-6">
              <div class="box box-warning">
                <div class="box-header with-border">
                  <h3 class="box-title">Bandwith brd85</h3>
                  <div class="box-tools pull-right">
                    <button class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
                  </div><!-- /.box-tools -->
                </div><!-- /.box-header -->
                <div class="box-body">
                <?php if (empty($bandbrd1[0]['id_rrd'])) {echo "Data Belum Terbentuk";} else { ?>
                 <img src="<?php echo base_url();?>/etc/rrdtools/gambar/<?php echo $bandbrd1[0]['id_rrd']?>_1d.gif" class="col-md-12">
                <?php } ?>
                </div><!-- /.box-body -->
              </div><!-- /.box -->
            </div><!-- /.col -->
          </div>

          <!-- Main row -->
          <div class="row">
            <!-- Left col -->
            <section class="col-lg-6 connectedSortable">
              <!-- Custom tabs (Charts with tabs)-->
              <div class="nav-tabs-custom">
                <div id="highchart"></div>
              </div><!-- /.nav-tabs-custom -->

            </section><!-- /.Left col -->
            <!-- right col (We are only adding the ID to make the widgets sortable)-->
            <section class="col-lg-6 connectedSortable">

               <!-- Calendar -->
              <div class="box box-solid bg-green-gradient">
                <div class="box-header">
                  <i class="fa fa-calendar"></i>
                  <h3 class="box-title">Calendar</h3>
                  <!-- tools box -->
                  <div class="pull-right box-tools">
                    <button class="btn btn-success btn-sm" data-widget="collapse"><i class="fa fa-minus"></i></button>
                    <button class="btn btn-success btn-sm" data-widget="remove"><i class="fa fa-times"></i></button>
                  </div><!-- /. tools -->
                </div><!-- /.box-header -->
                <div class="box-body no-padding">
                  <!--The calendar -->
                  <div id="calendar" style="width: 100%"></div>
                </div><!-- /.box-body -->
              </div><!-- /.box -->

            </section><!-- right col -->
          </div><!-- /.row (main row) -->
        </section><!-- /.content -->
      </div><!-- /.content-wrapper -->

<script>
  $(function () {
    $('#highchart').highcharts({
        chart: {
            type: 'column'
        },
        title: {
            text: 'Situs Terpopuler'
        },
        // subtitle: {
        //     text: 'Source: WorldClimate.com'
        // },
        xAxis: {
            categories: [
                
                <?php foreach ($top_site as $dom) {
                    echo "'".$dom['domain']."',";
                }?>
              
            ],
            crosshair: true
        },
        yAxis: {
            min: 0,
            title: {
                text: 'Hit (kali)'
            }
        },
        tooltip: {
            headerFormat: '<span style="font-size:10px">{point.key}</span><table>',
            pointFormat: '<tr><td style="color:{series.color};padding:0"> </td>' +
                '<td style="padding:0"><b>{point.y: 1f} hit</b></td></tr>',
            footerFormat: '</table>',
            shared: true,
            useHTML: true
        },
        plotOptions: {
            column: {
                pointPadding: 0.2,
                borderWidth: 0
            }
        },
        series: [
        {
            data: [
            <?php 
              foreach ($top_site as $dom1) {
                echo "
                  {
                    name: '".$dom1['domain']."',
                    // color: '',
                    y: ".$dom1['hit']."
                  },
                ";
              }
            ?>
            // {
            //     name: 'Point 1',
            //     color: '',
            //     y: 1
            // }, {
            //     name: 'Point 2',
            //     color: '',
            //     y: 5
            // }
            ]

        }]
    });
});
</script>