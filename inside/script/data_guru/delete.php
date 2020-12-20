<?php 
	include 'koneksi.php';
	$id_siswa = $_GET['id_guru'];

	//query delete
	$query = "DELETE FROM tb_guru WHERE id_guru = '$id_guru'";
	mysqli_query($koneksi,$query);

	header("location:../../data_guru.php");
?>