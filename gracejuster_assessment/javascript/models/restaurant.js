const Restaurant = (function () {
    var counter = 1
    return class Restaurant {
        constructor(name){
            this.id = counter++
            this.name = name
            this.reviews = []
            this.customers = []
            Store.data.restaurants.push(this)
        }

        all() {
            return Store.data.restaurants
        }

        find_by_name(name) {
            return Store.data.restaurants.find( 
                function(restaurant) { 
                    restaurant.name === name 
                }
            )

        }

        customers() {
            return this.customers
        }

        reviews() {
            return this.reviews 
        }

    }

}())