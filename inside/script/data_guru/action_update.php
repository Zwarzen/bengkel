<?php 
	include 'koneksi.php';
	//penamaan variabel

	$id_guru	= $_POST['id_guru']; 
	$nama_guru 	= $_POST['nama_guru'];
	$ket_guru  	= $_POST['ket_guru'];

	print_r($_POST);

	//echo "tes 1";
	//query update data
	$query="UPDATE tb_guru SET id_guru 	= '$id_guru', 
							  nama_guru 	= '$nama_guru', 
							  ket_guru 		= '$ket_guru' 
							  WHERE id_guru = '$id_guru' ";
	//echo "$query";
	//echo "tes 2";

	mysqli_query($koneksi, $query);
	// mengalihkan ke halaman index2.php
	header("location:../../data_guru.php");
?>