<?php  

// insert file koneksi.php
include 'koneksi.php';

$judulArtikel = $_POST['judul_artikel'];
$gambarArtikel = $_FILES['gambar_artikel'];
$isiArtikel = $_POST['isi_artikel'];

// query insert data
$statement = "INSERT INTO tb_article(title, image, content) VALUES ('$judulArtikel', '$gambarArtikel', '$isiArtikel')";
// run query from $statement
$sql = mysqli_query($koneksi, $statement);

// checking
if ($sql) {
	echo "Data berhasil ditambahkan";
} else {
	echo "Data gagal ditambahkan";	
}


?>