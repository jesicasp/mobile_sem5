package com.jesica.project2jesica

class FoodData {
    companion object{
        fun createDataSet():ArrayList<Food>{
            var list = ArrayList<Food>()
            list.add(
            Food("McFlurry Es Kopyor Kelapa",
                "Rp. 26000",
                "https://www.mcdelivery.co.id/id/static/1696172850912/assets/62/products/233023.png?",
                "hxoqhwu"
                ),
            )

            list.add(
            Food("Iced Coffee Matcha",
                "Rp 23000",
                "https://www.mcdelivery.co.id/id/static/1696172850912/assets/62/products/134008.png?",
                "nxosnco"
                ),
            )

            list.add(
                Food("Double Big Mac® McFlavor Fries",
                "Rp. 89500",
                "https://www.mcdelivery.co.id/id/static/1696172850912/assets/62/products/100357.png?",
                    "bixjsbc"
                ),
            )

            list.add(
                Food("McSpicy Chicken Burger McFlavor Fries",
                    "Rp. 65000",
                    "https://www.mcdelivery.co.id/id/static/1696172850912/assets/62/products/110151.png?",
                    "hxosajl"
                ),
            )

            list.add(
                Food("Double Cheeseburger McFlavor Fries",
                    "Rp. 67000",
                    "https://www.mcdelivery.co.id/id/static/1696172850912/assets/62/products/100355.png?",
                    "nciosclsa"
                ),
            )

            list.add(
                Food("Bundling 2 Double Choco Pie",
                    "Rp. 28000",
                    "https://www.mcdelivery.co.id/id/static/1696172850912/assets/62/products/283031.png?",
                    "jcpsacsa"
                ),
            )

            list.add(
                Food("Paket Hantaran McD",
                    "Rp. 135000",
                    "https://www.mcdelivery.co.id/id/static/1696172850912/assets/62/products/211150.png?",
                    "nxonscs"
                ),
            )

            list.add(
                Food("Creamy Garlic McFlavor Fries with Bread Crumb",
                    "Rp. 28000",
                    "https://www.mcdelivery.co.id/id/static/1696172850912/assets/62/products/185054.png?",
                    "nxosnxols"
                ),
            )

            return list
        }
    }
}

