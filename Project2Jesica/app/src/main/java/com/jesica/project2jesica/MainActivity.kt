package com.jesica.project2jesica

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.util.Log
import android.widget.ListView

class MainActivity : AppCompatActivity() {
    private var listFood : ListView?=null
    private var foodAdapter : FoodAdapter?=null
    private var foodList:ArrayList<FoodModel>?=null

    private val foodImageList = intArrayOf(
        R.drawable.biscuit, R.drawable.bread, R.drawable.pie, R.drawable.pancake, R.drawable.sandwich,
        R.drawable.browncake, R.drawable.pizza, R.drawable.softcake, R.drawable.croffle, R.drawable.waffle
    )

    private val foodNameList = arrayOf(
        "biscuit","bread","pie","pancake", "sandwich", "browncake", "pizza", "softcake",
        "croffle", "waffle"
    )

    private val foodDetailList = arrayOf(
        "biscuit rasa cokelat lembut","bread lembut ala prancis","pie apple dengan selai premium","pancake lembut dengan cheese",
        "sandwich dengan roti croissant dan toping yang enak", "browncake lembut ala itali", "pizza selai tomat dan cabai pedas",
        "softcake premium lembut", "croffle renyah dan lembut di dalam", "waffle terbaru dengan rasa yang nikmat"
    )

    private val foodPriceList= arrayOf(
        "Rp. 20000", "Rp. 19000", "Rp. 18000", "Rp. 17000", "Rp. 17000",
        "Rp. 18000", "Rp. 19000", "Rp. 20000", "Rp. 19000", "Rp. 18000"
    )

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)
        listFood = findViewById(R.id.listFood)
        foodList = populateList()
        Log.d("Succes", foodList!!.size.toString()+"")
        foodAdapter = FoodAdapter(this@MainActivity, foodList!!)
        listFood!!.adapter = foodAdapter
    }

    private fun populateList(): ArrayList<FoodModel>? {
        val list= ArrayList<FoodModel>()
        for(i in 0..9){
            val food = FoodModel()

            food.setFoodName(foodNameList[i])
            food.setFoodImage(foodImageList[i])
            food.setFoodPrice(foodPriceList[i])
            food.setFoodDetail(foodDetailList[i])


            list.add(food)
        }
        return list
    }
}