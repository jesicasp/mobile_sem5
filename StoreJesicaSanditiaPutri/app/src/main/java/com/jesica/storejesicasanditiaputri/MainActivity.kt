package com.jesica.storejesicasanditiaputri

import android.content.Intent
import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.view.View
import android.widget.ProgressBar
import android.widget.Toast
import androidx.recyclerview.widget.RecyclerView
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout
import com.google.android.material.floatingactionbutton.FloatingActionButton
import com.android.volley.Request
import com.android.volley.toolbox.JsonArrayRequest
import com.android.volley.toolbox.Volley
import java.util.*

class MainActivity : AppCompatActivity() {
    lateinit var fab : FloatingActionButton
    lateinit var recBarang : RecyclerView
    lateinit var progress : ProgressBar
    lateinit var swipe : SwipeRefreshLayout
    lateinit var barangAdapter : BarangAdapter
    lateinit var barangList : ArrayList<Barang>

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)
        barangList = ArrayList()
        barangAdapter = BarangAdapter(barangList)
        initView()
        recBarang.adapter = barangAdapter
        getDataBarang()
        fab.setOnClickListener {
            val intent = Intent(this@MainActivity, AddBarangActivity::class.java)
            startActivity(intent)
        }
        swipe.setOnRefreshListener {
            getDataBarang()
            swipe.isRefreshing=false
        }
    }

    private fun getDataBarang() {
        var url = "https://jesicasp.000webhostapp.com/getdatabarang.php"
        val queue = Volley.newRequestQueue(this@MainActivity)
        val request = JsonArrayRequest(Request.Method.GET, url, null, { response ->
            progress.visibility= View.GONE
            try{
                for (i in 0 until response.length()){
                    val responseObj = response.getJSONObject(i)
                    val brgNama = responseObj.getString("nama")
                    val brgKet = responseObj.getString("keterangan")
                    val brgHarga = "Harga : Rp"+responseObj.getString("harga")
                    val brgPromo = "Harga : Rp"+responseObj.getString("promo")
                    val brgGambar = responseObj.getString("gambar")
                    barangList.add(Barang(brgNama,brgKet,brgHarga,brgPromo,brgGambar)
                    )
                    barangAdapter.notifyDataSetChanged()
                }
            }catch(e:Exception){
                e.printStackTrace()
            }
        },{
            error ->
            Toast.makeText(this@MainActivity,"Gagal Mendapat Data dari Server", Toast.LENGTH_LONG).show()

        })
        queue.add(request)

    }

    private fun initView() {
        recBarang = findViewById(R.id.listBarang)
        fab = findViewById(R.id.fab)
        progress = findViewById(R.id.progressBar)
        swipe = findViewById(R.id.swipeLayout)
    }
}