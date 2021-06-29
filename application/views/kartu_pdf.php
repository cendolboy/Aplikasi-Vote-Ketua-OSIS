<head>
    <meta charset="utf-8">
	<title>Kartu</title>
	<link rel="icon" type="image/png" href="<?php echo base_url()?>assets/logo.png"/>
    <style>
	@media print 
	{
	   @page
	   {
		width: 21cm;
		height: 29.7cm;
        margin: 0;
		size: potrait;
		margin-top:50px;
		page-break-before: always;
	  }
	}
    body {
		width: 21cm;
		height: 29.7cm;
        margin: 0;
        }
    .label{
        width: 9cm;
        height: 6cm;
        margin-left: 0.12in;
	margin-top: 0.12in;
        float: left;
        overflow: hidden;
	border:1px solid #000;
        }
	.label table{font-size:7pt;margin-left:2px;margin-top:2px;}
    @media print {
		.pageBreak {
			page-break-after: always;
		}
	}
	div.page{
		page-break-after: always;
		page-break-inside: avoid;
	}
	@media all {
		.page-break { display: none; }
		}

		@media print {
		.page-break { display: block; page-break-before: always; }
		}
    </style>
	<style type="text/css">
	.tg  {border-collapse:collapse;border-spacing:0;}
	.tg td{font-family:Arial, sans-serif;font-size:14px;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:black;}
	.tg th{font-family:Arial, sans-serif;font-size:14px;font-weight:normal;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:black;}
	.tg .tg-0pky{border-color:inherit;text-align:left;vertical-align:top}
	.tg .tg-0lax{text-align:left;vertical-align:top}
	</style>
<script>
window.print();
</script>
</head>
<body>
<?php
$lineCounter = 0;
if (is_array($kartu)) {
    foreach($kartu as $row) {
        $lineCounter++;
?>
<div class="label">
<center>
	<div class="page">
		<div class="card">
			<div class="card-body">
				<table width="100%" class="tg">
				  <tr>
					<th class="tg-0pky" colspan="2"><center><img src="<?php echo base_url()?>assets/img/logo.png" width="50px"></center></th>
					<th class="tg-0pky" colspan="2"><center><h3>Kartu Peserta Pemilihan</h3></center></th>
				  </tr>
				  <tr>
					<td class="tg-0pky" colspan="2" rowspan="4"><center><img src="<?php echo base_url()?>assets/img/user.jpg" width="75px"/></center></td>
					<td class="tg-0pky">Nama</td>
					<td class="tg-0pky">: <?php echo $row->nama_user;?></td>
				  </tr>
				  <tr>
					<td class="tg-0pky">Kelas</td>
					<td class="tg-0pky">: <?php echo $row->kelas;?></td>
				  </tr>
				  <tr>
					<td class="tg-0pky">Username</td>
					<td class="tg-0pky">: <b><?php echo $row->username;?></b></td>
				  </tr>
				  <tr>
					<td class="tg-0lax">Password</td>
					<td class="tg-0lax">: <b><?php echo $row->password;?></b></td>
				  </tr>
				</table>
			</div>
		</div>
	</div>
</center>
</div>
<?php
	if($lineCounter % 8 == 0){
		echo '<div class="page-break"></div>' . PHP_EOL;
	}
}}
?>
</body>