package com.jesica.project2jesica

class FoodModel {
    var foodImages:Int =0
    var foodNames:String?=null
    var foodPrices:String?=null
    var foodDetails:String?=null

    fun setFoodName(foodNames:String){
        this.foodNames = foodNames
    }

    fun setFoodImage(foodImages:Int){
        this.foodImages = foodImages
    }

    fun setFoodPrice(foodPrices:String){
        this.foodPrices = foodPrices
    }

    fun getFoodName():String{
        return foodNames.toString()
    }

    fun getFoodImage():Int{
        return foodImages
    }

    fun getFoodPrice():String{
        return foodPrices.toString()
    }

    fun setFoodDetail(foodDetails:String){
        this.foodDetails = foodDetails
    }

    fun getFoodDetail():String{
        return foodDetails.toString()
    }

}