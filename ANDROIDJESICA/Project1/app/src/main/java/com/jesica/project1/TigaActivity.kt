package com.jesica.project1

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.view.View
import android.widget.AdapterView
import android.widget.ArrayAdapter
import android.widget.Button
import android.widget.CheckBox
import android.widget.DatePicker
import android.widget.EditText
import android.widget.RadioButton
import android.widget.RadioGroup
import android.widget.Spinner
import android.widget.TextView
import java.lang.StringBuilder
import java.util.Calendar

class TigaActivity : AppCompatActivity(),AdapterView.OnItemSelectedListener {
    val aMakanan = arrayOf<String>("Ayam Goreng", "Ayam Crispy", "Ayam Geprek", "Ayam Penyet", "Chicken Katsu")
    val aMinuman = arrayOf<String>("Green Tea", "Thai Tea","Teh Es", "Teh Panas", "Taro")

    lateinit var rbBayar : RadioButton
    lateinit var rgBayar : RadioGroup

    lateinit var chkJM : CheckBox
    lateinit var chkJA : CheckBox
    lateinit var chkM : CheckBox

    lateinit var tglBayar : DatePicker

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_tiga)
        val noMeja = findViewById<EditText>(R.id.editMeja)
        val spinMakanan = findViewById<Spinner>(R.id.spinMakanan)
        val spinMinuman = findViewById<Spinner>(R.id.spinMinuman)
        val hargaMakanan = findViewById<EditText>(R.id.editHargaMakanan)
        val hargaMinuman = findViewById<EditText>(R.id.editHargaMinuman)
        val tambahan = findViewById<EditText>(R.id.editTambahan)
        val btnProses = findViewById<Button>(R.id.btnProsesResto)
        val dataPesanan = findViewById<TextView>(R.id.txtHasilResto)

        chkJM = findViewById<CheckBox>(R.id.chkJM)
        chkJA = findViewById<CheckBox>(R.id.chkJA)
        chkM = findViewById<CheckBox>(R.id.chkM)

        rgBayar=findViewById<RadioGroup>(R.id.rgBayar)

        spinMakanan.onItemSelectedListener = this
        val aa: ArrayAdapter<*> = ArrayAdapter<Any?>(this@TigaActivity,
            R.layout.spin_style, aMakanan)
        spinMakanan.adapter = aa

        spinMinuman.onItemSelectedListener = this
        val aa2: ArrayAdapter<*> = ArrayAdapter<Any?>(this@TigaActivity,
            R.layout.spin_style, aMinuman)
        spinMinuman.adapter = aa2

        tglBayar = findViewById<DatePicker>(R.id.dateBayar)
        val tgl = Calendar.getInstance()
        /*tglBayar.init(tgl.get(Calendar.YEAR), tgl.get(Calendar.MONTH), tgl.get(Calendar.DAY_OF_MONTH)){
            datepick,year, month, day ->
        }*/

        btnProses.setOnClickListener {

            val nMeja = noMeja.text
            val makanan = spinMakanan.selectedItem
            val minuman = spinMinuman.selectedItem
            val hMakanan = hargaMakanan.text.toString().toDouble()
            val hMinuman = hargaMinuman.text.toString().toDouble()
            val Tambahan = tambahan.text.toString().toDouble()
            val dPesanan = dataPesanan.text


            val selectedRadioGroup:Int = rgBayar.checkedRadioButtonId
            rbBayar = findViewById(selectedRadioGroup)

            val caraBayar = rbBayar.text.toString()

            var totTambah:Int = 0
            val tambahan = StringBuilder()
            if(chkJA.isChecked){
                tambahan.append("\nJus Mangga Rp 12000")
                totTambah += 12000
            }
            if(chkJM.isChecked){
                tambahan.append("\nJus Mangga Rp 12000")
                totTambah += 12000
            }
            if(chkM.isChecked){
                tambahan.append("\nMatcha Rp 10000")
                totTambah += 10000
            }
            val bayar = hMakanan+hMinuman+Tambahan+totTambah


            dataPesanan.setText("$dPesanan \nNo Meja : $nMeja \nMakanan : $makanan \nMinuman : $minuman" +
                    "\nHarga Makanan : $hMakanan \nHarga Minuman : $hMinuman \nTambahan Lainnya: $Tambahan " +
                    "\nCara Bayar : $caraBayar \nTotal Tambahan : $totTambah "+
                    "\nTambahan : ${tambahan.toString()} \nTotal Bayar : $bayar")
        }

    }

    override fun onItemSelected(parent: AdapterView<*>?, view: View?, position: Int, id: Long) {

    }

    override fun onNothingSelected(parent: AdapterView<*>?) {
        TODO("Not yet implemented")
    }
}