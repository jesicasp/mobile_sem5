package com.jesica.project1

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.view.View
import android.widget.AdapterView
import android.widget.EditText
import android.widget.TextView

class LimaActivity : AppCompatActivity() {
    lateinit var outNopel: TextView
    lateinit var outJenis: TextView
    lateinit var outKwh: TextView
    lateinit var outHarga:TextView
    lateinit var outBayar:TextView

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_lima)

        val detail = findViewById<TextView>(R.id.txtDetailPLN)
        outNopel = findViewById<TextView>(R.id.txtDataNoPel)
        outJenis = findViewById<TextView>(R.id.txtJenis)
        outKwh = findViewById<TextView>(R.id.txtDataPemakaian)
        outHarga = findViewById<TextView>(R.id.txtHargaKwh)
        outBayar = findViewById<TextView>(R.id.txtTotalBayar)

        val bundle = intent.extras
        if (bundle!=null){
            outNopel.text ="No Pelanggan : ${bundle.getString("nopel")}"
            outJenis.text ="Jenis Layanan : ${bundle.getString("jenisLayanan")}"
            outKwh.text ="Pemakaian : ${bundle.getString("kwh")}"
            outHarga.text ="Harga/Kwh : ${bundle.getString("harga")}"
            outBayar.text="Total Bayar : ${bundle.getString("bayar")}"
        }
    }
}