<!--simpan.php-->
<?php

	include 'koneksi.php';

	//menyimpan ke dalam variable
	print_r($_POST);
	$id_guru	= $_POST['id_guru']; 
	$nama_guru 	= $_POST['nama_guru'];
	$ket_guru  	= $_POST['ket_guru'];
	echo $nama_guru;

	//print_r($_POST);

	//query insert
	$query = "INSERT INTO tb_guru SET id_guru 	= '$id_guru', 
							  nama_guru 	= '$nama_guru', 
							  ket_guru 		= '$ket_guru' ";

	//echo $query;
	mysqli_query($koneksi, $query);

	//mengalihkan ke halaman read
	header('location:../../data_guru.php?pesan='. "Data berhasil disimpan");
?>