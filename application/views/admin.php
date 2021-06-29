<html>
	<head>
		<title>E-Vote TSHS 2019</title>
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<link rel="shortcut icon" href="<?php echo base_url()?>assets/img/logo.png"/>
		<link rel="stylesheet" href="<?php echo base_url()?>assets/css/bootstrap.min.css" type="text/css"/>
		<link rel="stylesheet" href="<?php echo base_url()?>assets/css/dataTables.bootstrap4.min.css" type="text/css"/>
		<link rel="stylesheet" href="<?php echo base_url()?>assets/css/custom.css" type="text/css"/>
		<script src="<?php echo base_url()?>assets/chartjs/Chart.js"></script>
		<script src="<?php echo base_url()?>assets/js/jquery.min.js"></script>
		<script src="<?php echo base_url()?>assets/js/popper.min.js"></script>
		<script src="<?php echo base_url()?>assets/js/bootstrap.min.js"></script>
		<script src="<?php echo base_url()?>assets/js/jquery.dataTables.min.js"></script>
		<script src="<?php echo base_url()?>assets/js/dataTables.bootstrap4.min.js"></script>
		<!--SweatAlert-->
		<link href="<?php echo base_url()?>assets/sweetalert/sweetalert.css" rel="stylesheet">
		<script src="<?php echo base_url()?>assets/sweetalert/sweetalert.min.js"></script>
		<script>
		$(document).ready(function() {
			$('a[data-toggle="tab"]').on( 'shown.bs.tab', function (e) {
				$.fn.dataTable.tables( {visible: true, api: true} ).columns.adjust();
			} );
			$('table.table').DataTable( {
				 "language": {
							"sEmptyTable":   "Tidak ada data yang tersedia ...",
							"sProcessing":   "Sedang memproses mohon tunggu ...",
							"sLengthMenu":   "Tampilkan _MENU_ Data",
							"sZeroRecords":  "Tidak ditemukan data yang sesuai",
							"sInfo":         "Menampilkan _START_ sampai _END_ dari _TOTAL_ Data",
							"sInfoEmpty":    "Menampilkan 0 sampai 0 dari 0 Data",
							"sInfoFiltered": "(disaring dari _MAX_ entri keseluruhan)",
							"sInfoPostFix":  "",
							"sSearch":       "Pencarian Data : ",
							"sUrl":          "",
							"oPaginate": {
								"sFirst":    "Pertama",
								"sPrevious": "Sebelumnya",
								"sNext":     "Selanjutnya",
								"sLast":     "Terakhir"
							}
						 },
						lengthMenu: [[ 5, 10, 15, 20, 25, 50, -1 ],[ '5 Baris', '10 Baris (Default)', '15 Baris', '20 Baris','25 Baris', '50 Baris', 'Tampilkan Semua Data' ]],
						"pageLength": 5,
						"pagingType": "full_numbers",
						responsive: true,
			} );
		} );
		</script>
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
				<div class="container">
				  <div class="row">
					<div class="col-lg-12">
					</br>
					<ul class="nav nav-tabs">
						<li class="nav-item"><a class="nav-link active" data-toggle="tab" href="#semua">Suara Masuk</a></li>
						<li class="nav-item"><a class="nav-link" data-toggle="tab" href="#sudah">Daftar Peserta Sudah Memilih</a></li>
						<li class="nav-item"><a class="nav-link" data-toggle="tab" href="#belum">Daftar Peserta Belum Memilih</a></li>
						<li class="nav-item"><a class="btn btn-danger" href="<?php echo base_url()?>Admin/kartu" target="blank">Unduh Kartu Peserta</a></li>
					</ul>
					<div id="myTabContent" class="tab-content">
					  <div class="tab-pane fade active show" id="semua">
						<div class="col-lg-12">
							<section class="our-webcoderskull padding-lg">
								<ul class="row">
									<?php $no=0; foreach($kandidat as $row) { $no++;?>
									  <li class="col-12 col-md-6 col-lg-4">
										  <div class="cnt-block equal-hight" style="height: 350px;">
											<figure><img src="<?php echo base_url()?>assets/img/<?php echo $row->foto;?>" class="img-responsive" alt=""></figure>
											<h3><a href="#"><?php echo $row->nama_kandidat;?></a></h3>
											<p><?php echo $row->motto;?></p>
											<?php 
											include'config.php';
											$suara = "select count(id_kandidat) as total from vote where id_kandidat = '$row->id_kandidat'";
											$hasilsuara = $conn->query($suara);
											while($row = $hasilsuara->fetch_assoc()) {
											?>											
											<button class="btn btn-primary btn-lg btn-block">
												Mendapatkan <?php echo $row['total'];?> Suara
											</button>
											<?php } ?>
										  </div>
									  </li>
									<?php } ?>
								</ul>	
							</section>
						</div>
					  </div>
					  <div class="tab-pane fade" id="sudah">
						<table id="mytable0" class="table table-striped table-bordered" style="width:100%">
							<thead>
								<tr>
									<th>No</th>
									<th>Nama</th>
									<th>Kelas</th>
									<th>Username</th>
									<th>Status Vote</th>
								</tr>
							</thead>
							<tbody>
								<?php $no=0; foreach($dpt_sudah as $row) { $no++;?>
								<tr>
									<td><?php echo $no;?></td>
									<td><?php echo $row->nama_user;?></td>
									<td><?php echo $row->kelas;?></td>
									<td><?php echo $row->username;?></td>
									<td><?php echo $row->status_vote;?></td>
								</tr>
								<?php } ?>
							</tbody>
						</table>
					  </div>
					  <div class="tab-pane fade" id="belum">
						<table id="mytable1" class="table table-striped table-bordered" style="width:100%">
							<thead>
								<tr>
									<th>No</th>
									<th>Nama</th>
									<th>Kelas</th>
									<th>Username</th>
									<th>Status Vote</th>
								</tr>
							</thead>
							<tbody>
								<?php $no=0; foreach($dpt_belum as $row) { $no++;?>
								<tr>
									<td><?php echo $no;?></td>
									<td><?php echo $row->nama_user;?></td>
									<td><?php echo $row->kelas;?></td>
									<td><?php echo $row->username;?></td>
									<td><?php echo $row->status_vote;?></td>
								</tr>
								<?php } ?>
							</tbody>
						</table>
					  </div>
					</div>					
					</div>
				  </div>
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