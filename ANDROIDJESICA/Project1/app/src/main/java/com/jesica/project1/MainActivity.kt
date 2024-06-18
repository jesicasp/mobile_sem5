package com.jesica.project1

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.widget.Button
import android.widget.EditText
import android.widget.TextView


class MainActivity : AppCompatActivity() {
    lateinit var nama: EditText
    lateinit var prodi: EditText
    lateinit var submit: Button
    lateinit var output: TextView



    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        nama = findViewById(R.id.editNama)
        prodi = findViewById(R.id.editProdi)
        submit = findViewById(R.id.btnSubmit)
        output = findViewById(R.id.txtOutput)
        submit.setOnClickListener {
            output.text = "Data Mahasiswa : \nNama Mahasiswa : " + nama.text + "\nProdi : " + prodi.text
        }
    }
}

