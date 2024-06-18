package com.jesica.project2jesica

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.ImageView
import android.widget.TextView
import androidx.recyclerview.widget.RecyclerView
import com.bumptech.glide.Glide

class FoodRecAdapter():RecyclerView.Adapter <FoodRecAdapter.FoodHolder>() {
    private var item : List<Food> = ArrayList()

    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): FoodHolder {
        val view : View = LayoutInflater.from(parent.context).inflate(R.layout.food_rec_item,parent,false)
        return FoodHolder(view)
    }

    override fun getItemCount(): Int {
        return item.size
    }

    fun submitList(foodRecList: List<Food>){
        item = foodRecList
    }

    override fun onBindViewHolder(holder: FoodHolder, position: Int) {
        when(holder){
            is FoodHolder -> {holder.blind(item.get(position))}
        }
    }

    inner class FoodHolder(itemView: View):RecyclerView.ViewHolder(itemView){
        var fName:TextView = itemView.findViewById(R.id.foodNameRec)
        var fPrice:TextView = itemView.findViewById(R.id.foodPriceRec)
        var fImage:ImageView = itemView.findViewById(R.id.foodImageRec)
        var fDetail:TextView = itemView.findViewById(R.id.food_detailRec)
        fun blind(food: Food){
            Glide.with(itemView.context)
                .load(food.foodImagesRec)
                .into(fImage)
            fName.setText(food.foodNamesRec)
            fPrice.setText(food.foodPricesRec)
            fDetail.setText(food.foodDetailsRec)
        }
    }
//        //gambar kalau lewat internet butuh library (glide github / picasso github)
//        //tambah ke dependencies     implementation ("com.github.bumptech.glide:glide:4.16.0")
//
//        //binding untuk menghubungkan komponen dengan data class
//        fun bind(food: Food){
//            Glide.with(itemView.context)
//                .load(foodImageRec)
//                .into(fImage);
//        }
//        fName.setText(food.foodNameRec)
//        fPrice.setText(food.foodPriceRec)
//
//
}