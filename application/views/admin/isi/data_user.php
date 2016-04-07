<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
  <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Daftar User 
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> User</a></li>
        <li class="active">Daftar User</li>
      </ol>
    </section>
    <section class="content">
      <!-- Small boxes (Stat box) -->
      <div class="row">
        <div class="col-lg-12 col-xs-12">
          <div class="box-body">
            <table id="log_squid" class="table table-bordered table-striped">
              <thead>
                <tr>
                  <th>No</th>
                  <th>Username</th>
                  <th>Email</th>
                  <th>Role</th>
                  <th>Aksi</th>
                </tr>
              </thead>
              <tbody>
                <?php $i=1;foreach ($user as $user) { 
                    //GETTING DOMAIN USING PREG MATCH
                    // get host name from URL
                  ?>
                  <tr>
                    <td><?php echo $i;?></td>
                    <td><?php echo $user['username'];?></td>
                    <td><?php echo $user['email'];?></td>
                    <td><?php if ($user['role']=0){echo "Admin";}else{echo "User";};?></td>
                    <td>
                      <a class="btn btn-primary edit_device" data-toggle="modal" data-target="#edit_device" id="<?php echo $user['id_user']; ?>">Edit</a>
                      <a href="<?php echo base_url();?>index.php/welcome/detail_perangkat?id=<?php echo $user['id_user']; ?>" class="btn btn-success">Detail</a>
                      <a href="<?php echo base_url();?>index.php/welcome/hapus_perangkat?id=<?php echo $user['id_user']; ?>" class="btn btn-danger">Hapus</a>
                    </td>
                  </tr>
                <?php $i++ ;} ?>
              </tbody>
            </table>
        </div>
      </div>
    </section>
</div><!-- /.content-wrapper -->

