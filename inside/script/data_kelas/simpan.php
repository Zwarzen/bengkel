<!--simpan.php-->
<?php

	include 'koneksi.php';

	//menyimpan ke dalam variable
	print_r($_POST);
	$id_kelas		= $_POST['id_kelas']; 
	$nama_kelas 	= $_POST['nama_kelas'];
	$gedung		  	= $_POST['gedung'];
	echo $nama_siswa;

	//print_r($_POST);

	//query insert
	$query = "INSERT INTO tb_kelas SET id_kelas 	= '$id_kelas', 
							  		   nama_kelas 	= '$nama_kelas', 
							  		   gedung		= '$gedung' ";

	//echo $query;
	mysqli_query($koneksi, $query);

	//mengalihkan ke halaman read
	header('location:../../data_kelas.php?pesan='. "Data berhasil disimpan");
?>