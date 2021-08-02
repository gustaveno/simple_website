<?php  

// insert file koneksi.php
include 'koneksi.php';

$judulArtikel = $_POST['judul_artikel'];
$gambarArtikel = $_FILES['gambar_artikel'];
$isiArtikel = $_POST['isi_artikel'];


// move file from temporary server to project
// static to .jpg	
$namaGambar = time().".jpg";
// make temp file
$tmpFile = $_FILES['gambar_artikel']['tmp_name'];
//save file path
$path = "gambar_artikel/". $namaGambar;
//upload file
if (move_uploaded_file($tmpFile, $path)) {
	// query insert data
	$statement = "INSERT INTO tb_article(title, image, content) VALUES ('$judulArtikel', '$namaGambar', '$isiArtikel')";

	$sql = mysqli_query($koneksi, $statement);

	if ($sql) {
		echo "Data berhasil ditambahkan";
	} else {
		echo "Data gagal ditambahkan";	
	}
}

?>