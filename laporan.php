<?php include "koneksi.php" ?>
<?php include "header.php" ?>

<h3>Lapora</h3>
<ul>
	<li>
		<strong>Laporan Pembayaran</strong>
		<form method="GET" action="laporan_transaksi.php" target="_blank">
			Mulai Tanggal <input type="date" name="tgl1" value="<?php echo date ('Y-m-d'); ?>" />
			Sampai Tanggal <input type="date" name="tgl2" value="<?php echo date ('Y-m-d'); ?>"/>
			<input type="submit" value="Tampilkan">
		</form>
	</li>
</ul>

<?php include "footer.php" ?> 