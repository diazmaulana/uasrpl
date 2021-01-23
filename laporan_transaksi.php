<?php include "koneksi.php" ?>
<?php include "header.php" ?>

<h4><center>Laporan Pembayaran</center></h4>
<ul>
	<li>
		
		<form method="GET" action="cetak1.php" target="_blank">
			Mulai Tanggal <input type="date" name="tgl1" value="<?php echo date ('Y-m-d'); ?>" />
			Sampai Tanggal <input type="date" name="tgl2" value="<?php echo date ('Y-m-d'); ?>" />
			<input type="submit" value="Tampilkan">
		
		</form>
	</li>
</ul>

<?php include "footer.php" ?> 