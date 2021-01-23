<?php
//variabel koneksi
$konek = mysqli_connect("localhost","root","","siswa baru");

if(!$konek){
	echo "Koneksi Database Gagal...!!!";
}
?>