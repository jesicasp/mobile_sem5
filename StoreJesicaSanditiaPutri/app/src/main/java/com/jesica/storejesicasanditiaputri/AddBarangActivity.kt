package com.jesica.storejesicasanditiaputri

import android.content.Intent
import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.widget.Button
import android.widget.EditText
import android.widget.Toast
import com.android.volley.Request
import com.android.volley.Response
import com.android.volley.toolbox.JsonArrayRequest
import com.android.volley.toolbox.StringRequest
import com.android.volley.toolbox.Volley
import java.util.*

class AddBarangActivity : AppCompatActivity() {
    lateinit var namaBarang : EditText
    lateinit var ketBarang : EditText
    lateinit var hargaBarang : EditText
    lateinit var gambarBarang : EditText
    lateinit var promoBarang : EditText
    lateinit var btnSimpan : Button
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_add_barang)
        initView();
        btnSimpan.setOnClickListener {
            sendAllDataUser()
        }
    }

    private fun sendAllDataUser() {
        val nama = namaBarang.text.toString()
        val keterangan = ketBarang.text.toString()
        val harga = hargaBarang.text.toString()
        val gambar = gambarBarang.text.toString()
        val promo = promoBarang.text.toString()
        simpanBarang(nama,keterangan,harga,gambar,promo)
    }

    private fun simpanBarang(nama:String, keterangan:String, harga:String, gambar:String, promo: String) {
        //isi param sesuai data class Barang
        //insert pake vall url bukan var url
        val url_add = "https://jesicasp.000webhostapp.com/add_data_barang.php"
        val requestQueue = Volley.newRequestQueue(this@AddBarangActivity)
        val stringRequest= object : StringRequest(Method.POST, url_add,
            Response.Listener {
                response ->Toast.makeText(this@AddBarangActivity,"Data Barang Berhasil Disimpan", Toast.LENGTH_LONG).show()
                startActivity(Intent(this@AddBarangActivity, MainActivity::class.java))
            }, Response.ErrorListener { Toast.makeText(this@AddBarangActivity,"Data Barang Gagal Disimpan", Toast.LENGTH_LONG).show() }
        ) {
            override fun getParams(): HashMap<String, String>? {
                val map = HashMap<String, String>()
                map["nama"] = nama//field tabel di database
                map["keterangan"]=keterangan
                map["harga"]=harga
                map["gambar"]=gambar
                map["promo"] = promo

                return map
            }
        }
        requestQueue.add(stringRequest)
    }

    private fun initView() {
        namaBarang = findViewById(R.id.namaBarang)
        ketBarang = findViewById(R.id.deskBarang)
        hargaBarang = findViewById(R.id.hargaBarang)
        gambarBarang = findViewById(R.id.lgambarBarang)
        promoBarang = findViewById(R.id.hpromoBarang)
        btnSimpan = findViewById(R.id.btnSimpanData)
    }
}
