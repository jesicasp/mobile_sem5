package com.jesica.project2jesica

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import androidx.recyclerview.widget.LinearLayoutManager
import androidx.recyclerview.widget.RecyclerView

class RecFoodActivity : AppCompatActivity() {
    lateinit var foodRecAdapter: FoodRecAdapter
    lateinit var recFood : RecyclerView

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_rec_food)
        recFood = findViewById(R.id.recFood)
        initRecFood()
        addDataSet()

    }

    private fun initRecFood(){
        recFood.apply {
            layoutManager = LinearLayoutManager(this@RecFoodActivity)
            foodRecAdapter = FoodRecAdapter()
            adapter = foodRecAdapter
        }
    }

    private fun addDataSet() {
        val data = FoodData.createDataSet()
        foodRecAdapter.submitList(data)
    }
}