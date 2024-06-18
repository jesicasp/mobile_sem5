<?php
include_once 'dbconnect.php';

$response = array();
if($_SERVER ['REQUEST_METHOD']=='POST'){
    $nama = $_POST['nama'];
    $keterangan = $_POST['keterangan'];
    $harga = $_POST['harga'];
    $gambar = $_POST['gambar'];
    $promo = $_POST['promo'];
    
    $query = "INSERT INTO barang (nama,keterangan,harga,gambar,promo) 
            VALUES ('$nama','$keterangan','$harga','$gambar','$promo')";
            
    $execute = mysqli_query($conn,$query);
    $result = mysqli_affected_rows($conn);
    if($result>0){
        $response["code"]=1;
        $response["message"]="Data barang berhasil disimpan";
    }else{
        $response["code"]=0;
        $response["message"]="Data barang gagal disimpan";
    }
}else{
    $response["code"]=0;
    $response["message"]="Tidak Ada Penambahan Data Baru";
}
echo json_encode($response);
mysqli_close($conn);
?>