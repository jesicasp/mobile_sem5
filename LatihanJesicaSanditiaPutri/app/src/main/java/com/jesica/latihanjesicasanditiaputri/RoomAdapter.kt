package com.jesica.latihanjesicasanditiaputri

import android.content.Context
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.BaseAdapter
import android.widget.ImageView
import android.widget.TextView

class RoomAdapter (
    private val context: Context,
    private val roomList:ArrayList<RoomModel>
    ): BaseAdapter(){
    override fun getViewTypeCount(): Int {
        return count
    }

    override fun getItemViewType(position: Int): Int {
        return position
    }

    //empat method ini milik BaseAdapter()
    override fun getCount(): Int {
        return roomList.size
    }

    override fun getItem(p0: Int): Any {
        return p0
//        return roomList[p0]
    }

    override fun getItemId(p0: Int): Long {
        return 0 //id dimulai dari 0, karena id dengan index
    }

    override fun getView(p0: Int, p1: View?, p2: ViewGroup?): View { //p1 = convertView
        var convertView =p1
        val holder:ViewHolder //memanggil class inner yg ada di bawah

        //jika convertView tidak ada
        if(convertView == null){
            holder = ViewHolder()
            //manggil layout food item dg layoutInflater
            val inflater = context.getSystemService(Context.LAYOUT_INFLATER_SERVICE) as LayoutInflater
            convertView = inflater.inflate(R.layout.room_item, null, true)//memanggil layout
            holder.roomKelas = convertView.findViewById(R.id.roomKelas) as TextView //R.id tergantung food_item.xml
            holder.roomImage = convertView.findViewById(R.id.roomImage) as ImageView
            holder.roomFasilitas = convertView.findViewById(R.id.roomFasilitas) as TextView
            holder.roomBed = convertView.findViewById(R.id.roomBed) as TextView
            holder.roomSarapan = convertView.findViewById(R.id.roomSarapan) as TextView
            holder.roomTambahan = convertView.findViewById(R.id.roomTambahan) as TextView
            holder.roomHarga = convertView.findViewById(R.id.roomHarga) as TextView


            convertView.tag = holder
        }else{
            holder = convertView.tag as ViewHolder
        }
        holder.roomKelas!!.setText(roomList[p0].getRoomKelas())
        holder.roomFasilitas!!.setText(roomList[p0].getRoomFasilitas())
        holder.roomImage!!.setImageResource(roomList[p0].getRoomImage())
        holder.roomBed!!.setText(roomList[p0].getRoomBed())
        holder.roomSarapan!!.setText(roomList[p0].getRoomSarapan())
        holder.roomTambahan!!.setText(roomList[p0].getRoomTambahan())
        holder.roomHarga!!.setText(roomList[p0].getRoomHarga())

        return convertView!!
    }

    //buat dulu inner class baru getView
    private inner class ViewHolder{ //utk memanggil semua komponen masing" widget yg ada di food item
        var roomKelas: TextView? =null
        var roomImage: ImageView? =null
        var roomFasilitas: TextView? =null
        var roomBed: TextView? =null
        var roomSarapan: TextView? =null
        var roomTambahan: TextView? =null
        var roomHarga: TextView? =null

    }

}