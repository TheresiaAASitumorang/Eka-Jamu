<?php
include('../../conf/config.php');

$id = $_POST['id_produk'];
$nama = $_POST['nama_produk'];
$deskripsi = $_POST['deskripsi'];
$harga = $_POST['harga'];
$kategori = $_POST['kategori'];

$query = "UPDATE produk SET 
            nama_produk='$nama',
            deskripsi='$deskripsi',
            harga='$harga',
            kategori='$kategori'
          WHERE id_produk='$id'";

$result = mysqli_query($koneksi, $query);

if ($result) {
    header('Location: ../index.php?page=data-produk');
    exit;
} else {
    echo "Gagal update: " . mysqli_error($koneksi);
}
?>
