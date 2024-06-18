package com.jesica.project1

import android.content.Intent
import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.view.View
import android.widget.AdapterView
import android.widget.ArrayAdapter
import android.widget.Button
import android.widget.EditText
import android.widget.Spinner

class EmpatActivity : AppCompatActivity(), AdapterView.OnItemSelectedListener {
    val jenisLayanan = arrayOf<String>("Pascabayar", "Prabayar")
    lateinit var nopel: EditText
    lateinit var kwh: EditText
    lateinit var jenis: Spinner
    lateinit var send_data: Button
    lateinit var harga:EditText

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_empat)

        //send_data = findViewById<Button>(R.id.btnSend)
        nopel = findViewById<EditText>(R.id.editNoPelanggan)
        jenis = findViewById<Spinner>(R.id.spinJenisLayanan)
        kwh = findViewById<EditText>(R.id.editPemakaian)
        harga = findViewById<EditText>(R.id.editHarga)

        jenis.onItemSelectedListener = this
        val aa: ArrayAdapter<*> = ArrayAdapter<Any?>(this@EmpatActivity,
            R.layout.spin_style, jenisLayanan)
        jenis.adapter = aa


        val send_data = findViewById<Button>(R.id.btnSend)
        send_data.setOnClickListener {
            val D_harga = harga.text.toString().toDouble()
            val D_kwh = kwh.text.toString().toDouble()
            val bayar = D_harga*D_kwh

            val bundle = Bundle()
            bundle.putString("nopel",nopel.text.toString())
            bundle.putString("kwh",kwh.text.toString())
            bundle.putString("jenisLayanan",jenis.selectedItem.toString())
            bundle.putString("harga", harga.text.toString())
            bundle.putString("bayar", bayar.toString())

            val intent = Intent(this@EmpatActivity, LimaActivity::class.java)
            intent.putExtras(bundle)
            startActivity(intent)


        }
    }

    override fun onItemSelected(parent: AdapterView<*>?, view: View?, position: Int, id: Long) {
    }

    override fun onNothingSelected(parent: AdapterView<*>?) {
    }
}