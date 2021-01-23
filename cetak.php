<html>
<head>
	<title>CETAK DATA siswa<br>eschool</title>
</head>
<body>

	<center>

		<h4>CETAK DATA siswa <br>eschool</a></h4>

	</center>

	<?php 
	include 'koneksi.php';
	?>

	<table border="1" style="width: 100%">
		<tr>
			<th width="1%">No</th>
			<th>NIS</th>
			<th>namasiswa</th>
			<th>kelas</th>
			<th>namaortu</th>
			<th>alamat</th>
			<th>nohp</th>
			
		</tr>
	 <?php 
            $no = 1;
            $sql = mysqli_query($konek,"select * from siswa");
            while($data = mysqli_fetch_array($sql)){
            ?>
            <tr>
                <td align="center"><?php echo $no++; ?></td>
                <td align="center"><?php echo $data['nis']; ?></td>
                <td align="center"><?php echo $data['nm_siswa']; ?></td>
                <td align="center"><?php echo $data['kelas']; ?></td>
				<td align="center"><?php echo $data['nm_ortu']; ?></td>
				<td align="center"><?php echo $data['alamat']; ?></td>
				<td align="center"><?php echo $data['no_tlp']; ?></td>
            </tr> 
            <?php 
            }
            ?>
	</table>

<table width="100%">
	<tr>
		<td></td>
		<td></td>
		<td width="200px">
			<p> Sekolah eschool, <?php echo date('d/m/y') ?><br/>
			Adminitrasi,</p>
			<br/>
			<br/>
			<p>__________________</p>
		</td>
	</tr>
</table>
	<script>
		window.print();
	</script>

</body>
</html>