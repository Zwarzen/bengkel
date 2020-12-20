<?php 
	include 'koneksi.php';
	//penamaan variabel

	$id_kelas		= $_POST['id_kelas']; 
	$nama_kelas 	= $_POST['nama_kelas'];
	$gedung		  	= $_POST['gedung'];

	print_r($_POST);

	//echo "tes 1";
	//query update data
	$query="UPDATE tb_kelas SET id_kelas 	= '$id_kelas', 
							  nama_kelas 	= '$nama_kelas', 
							  gedung		= '$gedung'  
							  WHERE id_kelas = '$id_kelas'
							  ";
	//echo "$query";
	//echo "tes 2";

	mysqli_query($koneksi, $query);
	// mengalihkan ke halaman index2.php
	header("location:../../data_kelas.php");
?>