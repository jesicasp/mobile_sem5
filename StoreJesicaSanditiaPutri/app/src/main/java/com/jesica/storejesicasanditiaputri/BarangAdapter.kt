package com.jesica.storejesicasanditiaputri

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.ImageView
import android.widget.TextView
import androidx.recyclerview.widget.RecyclerView
import com.squareup.picasso.Picasso
import java.util.*

class BarangAdapter(var barangList: ArrayList<Barang>): RecyclerView.Adapter<BarangAdapter.BarangHolder>(){

    inner class BarangHolder(itemView: View):RecyclerView.ViewHolder(itemView) {
        //nama disini harus berbeda dengan class com.jesica.storejesicasanditiaputri.Barang
        val namaBrg: TextView = itemView.findViewById(R.id.txtNama)
        val keteranganBrg:TextView = itemView.findViewById(R.id.txtKeterangan)
        val hargaBrg: TextView = itemView.findViewById(R.id.txtHarga)
        val promoBrg: TextView = itemView.findViewById(R.id.txtPromo)
        val gambarBrg: ImageView = itemView.findViewById(R.id.imageBarang)
    }

    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): BarangHolder {
        val layout = LayoutInflater.from(parent.context).inflate(R.layout.item_barang,parent,false)//val karena layout nya sudah ada
        return BarangHolder(layout)
    }

    override fun getItemCount(): Int {
        //size dari jumlah data
        return barangList.size

    }

    override fun onBindViewHolder(holder: BarangHolder, position: Int) {
        holder.namaBrg.text = barangList.get(position).nama //nama : berasal dari data class
        holder.keteranganBrg.text = barangList.get(position).keterangan
        holder.hargaBrg.text = barangList.get(position).harga
        holder.promoBrg.text = barangList.get(position).promo
        Picasso.get().load(barangList.get(position).gambar).into(holder.gambarBrg) //byk dev yg pake picasso drpd glide
    }
}