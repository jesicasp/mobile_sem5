package com.jesica.project1

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.view.View
import android.widget.AdapterView
import android.widget.ArrayAdapter
import android.widget.Button
import android.widget.EditText
import android.widget.Spinner
import android.widget.TextView

class DuaActivity : AppCompatActivity(),AdapterView.OnItemSelectedListener {
    val satuanB = arrayOf<String>("Box","Kg","Sachet","Lusin","Kodi")
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_dua)

        val namaBarang=findViewById<EditText>(R.id.editNamaBarang)
        val hargaBarang=findViewById<EditText>(R.id.editHarga)
        val jumlah=findViewById<EditText>(R.id.editJumlahBeli)
        val btnProses=findViewById<Button>(R.id.btnProses)
        val output=findViewById<TextView>(R.id.txtOutput)
        val spinSatuan=findViewById<Spinner>(R.id.spinSatuan)


        spinSatuan.onItemSelectedListener = this
        val aa:ArrayAdapter<*> = ArrayAdapter<Any?>(this@DuaActivity,
            R.layout.spin_style, satuanB)
        spinSatuan.adapter = aa
       // aa.setDropDownViewResource(R.layout.spin_style)

        btnProses.setOnClickListener {
            val nama = namaBarang.text
            val harga = hargaBarang.text.toString().toDouble()
            val jum = jumlah.text.toString().toInt()
            val bayar = harga*jum
            val out = output.text
            val satuanBarang = spinSatuan.selectedItem
            val pajak = 0.05*bayar
            var discount = 0.0
            if (bayar > 10000) {
                discount = 0.1*bayar
            }
            val totalBayar = bayar+pajak-discount

            output.setText("$out \nNama Barang : $nama \nHarga : $harga \nJumlah : $jum" +
                    " \nSatuan : $satuanBarang \nPajak : $pajak \nDiskon : $discount \nTotal Bayar : $totalBayar")
            //output.text= "Transaksi Belanja : \nNama Barang : $nama " +
            // "+ \nHarga : $harga" +
             //"+ \nJumlah : $jum "+
            // "+ \nSatuan : $satuan "+
            // "+ \nTotal Bayar : $bayar"
        }
    }

    override fun onItemSelected(parent: AdapterView<*>?, view: View?, position: Int, id: Long) {

    }

    override fun onNothingSelected(parent: AdapterView<*>?) {
        TODO("Not yet implemented")
    }
}