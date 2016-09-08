const Store = {}

Store.data = {
  customers:[],
  restaurants: [],
  reviews: []
}
//WASNT WORKING IN TESTS 
const Customer = (function () {
    var counter = 1
    return class Customer {
        constructor(name){
            this.id = counter++
            this.name = name
            Store.data.customers.push(this)
        }

        all() {
            return Store.data.customers
        }

        //THIS WAS HARD 
        findByName(name) {
            return Store.data.customers.find( 
                function(customer) { //where is customer coming from though..
                    customer.name === name 
                }
            )

        }

        addReview(content, restaurantName) {
            var restaurant //find or create the restaurant 
            if(Restaurant.findByName(restaurantName)) {
                restaurant = Restaurant.findByName(restaurantName)
            }
            else {
                restaurant = new Restaurant(restaurantName)
            }
            review = new Review(content, restaurant, this)
            restaurant.reviews.push(review)
            restaurant.customers.push(this)
            return review 

        }


    }

}())
