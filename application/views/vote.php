<html>
	<head>
		<title>E-Vote TSHS 2019</title>
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<link rel="shortcut icon" href="<?php echo base_url()?>assets/img/logo.png"/>
		<link rel="stylesheet" href="<?php echo base_url()?>assets/css/bootstrap.min.css" type="text/css"/>
		<link rel="stylesheet" href="<?php echo base_url()?>assets/css/custom.css" type="text/css"/>
		<script src="<?php echo base_url()?>assets/js/jquery.min.js"></script>
		<script src="<?php echo base_url()?>assets/js/popper.min.js"></script>
		<script src="<?php echo base_url()?>assets/js/bootstrap.min.js"></script>
		<!--SweatAlert-->
		<link href="<?php echo base_url()?>assets/sweetalert/sweetalert.css" rel="stylesheet">
		<script src="<?php echo base_url()?>assets/sweetalert/sweetalert.min.js"></script>
	</head>
	<body onload="sweetAlert('Akun Ada Terverivikasi', '<?php echo $this->session->userdata('nama_user');?> |E-Vote TSHS &copy; 2019', 'success');">
		<div class="canvas">
			<div class="header">
				<div class="container-fluid">
					<div class="row">
						<div class="col-lg-12">
							<div class="title">
								e-vote 2019 | talenta senior high school 
								<a style="float:right" href="<?php echo base_url()?>Login/logout" class="btn btn-sm btn-danger">Logout</a>
								<a style="float:right" href="#" class="btn btn-sm btn-light" >
									<?php echo $this->session->userdata('username');?> - <?php echo $this->session->userdata('nama_user');?>
								</a>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="content">
				<div class="container-fluid">
				<?php foreach($status as $cek) { ?>
					<?php if($cek->status_vote == 'Sudah') { ?>
					<!--Jika Sudah Memilih-->
					<div class="col-lg-12">
						<center>
							<img style="margin-top:45px" src="<?php echo base_url()?>assets/img/siswa.png" width="250px"/>
							<h1>Terimakasih <?php echo $this->session->userdata('nama_user');?></h1>
							<h3>Anda Sudah Menggunakan Hak Suara Anda Dengan Bijak</h3>
						</center>
					</div>
					<?php } else { ?>
					<!--Jika Belum Memilih-->
					<div class="col-lg-12">
						<section class="our-webcoderskull padding-lg">
							<ul class="row">
								<?php $no=0; foreach($kandidat as $row) { $no++;?>
								  <li class="col-12 col-md-6 col-lg-4">
									  <div class="cnt-block equal-hight" style="height: 420px;">
										<figure><img src="<?php echo base_url()?>assets/img/<?php echo $row->foto;?>" class="img-responsive" alt=""></figure>
										<h3><a href="#"><?php echo $row->nama_kandidat;?></a></h3>
										<p><?php echo $row->motto;?></p>
										<button type="button" class="btn btn-info btn-lg btn-block" data-toggle="modal" data-target="#myModal<?php echo $row->id_kandidat;?>">Visi Misi</button>
										<!-- Modal -->
										<div id="myModal<?php echo $row->id_kandidat;?>" class="modal fade" role="dialog">
										  <div class="modal-dialog modal-lg">
											<!-- Modal content-->
											<div class="modal-content">
											  <div class="modal-header">
												<h4 class="modal-title"><b>Pasangan Calon <?php echo $no;?> - <?php echo $row->nama_kandidat;?></b></h4>
											  </div>
											  <div class="modal-body">
												<h3>Visi</h3>
												<blockquote><?php echo $row->visi;?></blockquote>
												<hr>
												<h3>Misi</h3>
												<blockquote><?php echo $row->misi;?></blockquote>
											  </div>
											  <div class="modal-footer">
												<button type="button" class="btn btn-danger" data-dismiss="modal">Tutup</button>
											  </div>
											</div>
										  </div>
										</div>
										<br/>
										<a id="confirm_hapus<?php echo $row->id_kandidat;?>" href="<?php echo base_url()?>Vote/voting/<?php echo encrypt_url($row->id_kandidat);?>" class="btn btn-success btn-lg btn-block">Vote <?php echo $row->nama_kandidat;?></a>
										<script>
										$('#confirm_hapus<?php echo $row->id_kandidat;?>').on("click", function(e) {
										  e.preventDefault();
										  var url = $(this).attr('href');
										  swal({
											  title: "Vote <?php echo $row->nama_kandidat;?> ?",
											  text: "Pilih Tombol Vote Untuk Memberikan Suara",
											  type: "warning",
											  showCancelButton: true,
											  confirmButtonColor: '#DD6B55',
											  confirmButtonText: 'Vote',
											  cancelButtonText: "Batal",
											  confirmButtonClass: "btn-danger",
											  closeOnConfirm: false,
											  closeOnCancel: false
											},
											function(isConfirm) {
											  if (isConfirm) {
												swal("Terimakasih", "Anda Sudah Memberikan Suara Untuk Vote <?php echo $row->nama_kandidat;?>", "success");
												window.location.replace(url);
											  } else {
												swal("Batal", "Saya Mau Melihat Paslon Selain <?php echo $row->nama_kandidat;?>", "error");
											  }
											});
										});
										</script>
									  </div>
								  </li>
								<?php } ?>
							</ul>	
						</section>
					</div>
				<?php } } ?>
				</div>
			</div>
			<div class="footer">
				<div class="container">
					<div class="row">
						<div class="col-lg-12">
							<p>E-Vote TSHS &copy; 2019 | Talenta Senior High School</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</body>
</html>