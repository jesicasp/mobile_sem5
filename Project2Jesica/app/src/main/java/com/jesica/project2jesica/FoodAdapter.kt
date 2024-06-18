package com.jesica.project2jesica

import android.content.Context
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.BaseAdapter
import android.widget.ImageView
import android.widget.TextView

class FoodAdapter (
    private val context: Context,
    private val foodList:ArrayList<FoodModel>)
    :BaseAdapter(){ //BaseAdapter adalah class abstract

    override fun getViewTypeCount(): Int {
        return count
    }

    override fun getItemViewType(position: Int): Int {
        return position
    }

    //empat method ini milik BaseAdapter()
    override fun getCount(): Int {
        return foodList.size
    }

    override fun getItem(p0: Int): Any {
        return p0
//        return foodList[p0]
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
            convertView = inflater.inflate(R.layout.food_item, null, true)//memanggil layout
            holder.foodName = convertView.findViewById(R.id.food_name) as TextView //R.id tergantung food_item.xml
            holder.foodImage = convertView.findViewById(R.id.food_img) as ImageView
            holder.foodPrice = convertView.findViewById(R.id.food_price) as TextView
            holder.foodDetail = convertView.findViewById(R.id.food_detail1) as TextView

            convertView.tag = holder
        }else{
            holder = convertView.tag as ViewHolder
        }
        holder.foodName!!.setText(foodList[p0].getFoodName())
        holder.foodPrice!!.setText(foodList[p0].getFoodPrice())
        holder.foodImage!!.setImageResource(foodList[p0].getFoodImage())
        holder.foodDetail!!.setText(foodList[p0].getFoodDetail())

        return convertView!!
    }

    //buat dulu inner class baru getView
    private inner class ViewHolder{ //utk memanggil semua komponen masing" widget yg ada di food item
        var foodName:TextView? =null
        var foodImage:ImageView? =null
        var foodPrice:TextView? =null
        var foodDetail:TextView? =null

    }

}