const Review = (function () {
    var counter = 1
    return class Review {
        constructor(content, restaurant, customer){
            this.id = counter++
            this.content = content
            this.restaurant = restaurant
            this.customer = customer
            Store.data.reviews.push(this)
        }

        all() {
            return Store.data.reviews
        }

        customer() {
            return this.customer
        }

        restaurant() {
            return this.restaurant
        }
    }

}())
