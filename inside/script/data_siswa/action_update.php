<?php 
	include 'koneksi.php';
	//penamaan variabel

	$id_siswa 		= $_POST['id_siswa']; 
	$nama_siswa 	= $_POST['nama_siswa'];
	$nama_ortu  	= $_POST['nama_ortu'];
	$alamat 		= $_POST['alamat'];
	$no_telp 		= $_POST['no_telp'];

	print_r($_POST);

	//echo "tes 1";
	//query update data
	$query="UPDATE tb_siswa SET id_siswa 	= '$id_siswa', 
							  nama_siswa 	= '$nama_siswa', 
							  nama_ortu 	= '$nama_ortu', 
							  alamat 		= '$alamat', 
							  no_telp 		= '$no_telp'
							  WHERE id_siswa = '$id_siswa'";
	//echo "$query";
	//echo "tes 2";

	mysqli_query($koneksi, $query);
	// mengalihkan ke halaman index2.php
	header("location:../../tables.php");
?>