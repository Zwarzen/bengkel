<!--simpan.php-->
<?php

	include 'koneksi.php';

	//menyimpan ke dalam variable
	print_r($_POST);
	$id_siswa 		= $_POST['id_siswa']; 
	$nama_siswa 	= $_POST['nama_siswa'];
	$nama_ortu  	= $_POST['nama_ortu'];
	$alamat 		= $_POST['alamat'];
	$no_telp 		= $_POST['no_telp'];
	echo $nama_siswa;

	//print_r($_POST);

	//query insert
	$query = "INSERT INTO tb_siswa SET id_siswa = '$id_siswa', 
							  nama_siswa 		= '$nama_siswa', 
							  nama_ortu 		= '$nama_ortu', 
							  alamat 			= '$alamat', 
							  no_telp 			= '$no_telp' 
			 					 ";

	//echo $query;
	mysqli_query($koneksi, $query);

	

	//mengalihkan ke halaman read
	header('location:../../tables.php?pesan='. "Data berhasil disimpan");
?>