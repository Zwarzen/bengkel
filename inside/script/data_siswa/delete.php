<?php 
	include 'koneksi.php';
	$id_siswa = $_GET['id_siswa'];

	//query delete
	$query = "DELETE FROM tb_siswa WHERE id_siswa = '$id_siswa'";
	mysqli_query($koneksi,$query);

	header("location:../../tables.php");
?>