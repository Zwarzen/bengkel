<?php 
	include 'koneksi.php';
	$id_siswa = $_GET['id_kelas'];

	//query delete
	$query = "DELETE FROM tb_kelas WHERE id_kelas = '$id_kelas'";
	mysqli_query($koneksi,$query);

	header("location:../../data_kelas.php");
?>