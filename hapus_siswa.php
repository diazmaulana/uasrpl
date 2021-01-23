<?php
session_start();
if(isset($_SESSION['login'])){
	include "koneksi.php";
	$hapus = mysqli_query($konek, "DELETE FROM siswa WHERE nis='$_GET[id]'");
	
	if($hapus){
		header('location:siswa.php');
	}else{
		echo "Hapus data gagal...,
			<a href='siswa.php'><<< Kembali</a>";
	}
}else{
	echo "Anda tidak memiliki akses ke halaman ini!!!";
}
?>