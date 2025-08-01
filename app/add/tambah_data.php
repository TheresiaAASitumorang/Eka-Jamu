<?php
include('../conf/config.php');

$nama_pemesan = $_GET['nama_pemesan'];
$email = $_GET['email'];
$no_telp = $_GET['no_telp'];
$alamat = $_GET['alamat'];
$nama_produk = $_GET['nama_produk'];
$jumlah = $_GET['jumlah'];
$tanggal = $_GET['tanggal'];
$catatan = $_GET['catatan'];

$query = "INSERT INTO pesanan (nama_pemesan, email, no_telp, alamat, nama_produk, jumlah, tanggal, catatan)
          VALUES ('$nama_pemesan', '$email', '$no_telp', '$alamat', '$nama_produk', '$jumlah', '$tanggal', '$catatan')";

$result = mysqli_query($koneksi, $query);

if ($result) {
    header('Location: ../index.php?page=data-pelanggan'); // <<— INI YANG BENER
    exit;
} else {
    echo "Gagal menyimpan data: " . mysqli_error($koneksi);
}
?>
