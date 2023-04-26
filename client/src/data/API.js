class API {
    static baseUrl = 'http://localhost:3001'
    static signinUrl = API.baseUrl + '/signin'
    static signupUrl = API.baseUrl + '/signup'
    static validateUrl = API.baseUrl + '/validate'
    static basketUrl = API.baseUrl + '/baskets'
    static basketProductUrl = API.baseUrl + '/basket_products'
    static productsUrl = API.baseUrl + '/products'
    static removeUrl = API.baseUrl + '/remove'
    static categoriesUrl = API.baseUrl + '/categories'
    static FarmerProfileUrl = API.baseUrl + '/farmer-profile'
    static peepProfileUrl = API.baseUrl + '/peep-profile'


    static signin (user) {
        return fetch(this.signinUrl, {
            method: "POST",
            headers: {'Content-Type': 'application/json'},
            body: JSON.stringify(user)
        }).then(resp => resp.json())
    
       }
    
    static signup (user) {
        return fetch(this.signupUrl, {
            method: 'POST', 
            headers: {'Content-Type': 'application/json'},
            body: JSON.stringify(user)
        }).then(resp => resp.json())       

       }
    
    static validate () {
        const token = localStorage.getItem('token') 
        return fetch(this.validateUrl, {
            headers: { Authorization: token }
        }).then(resp => resp.json())
    }
    

    static getProducts () {
        return fetch(this.productsUrl)
        .then(resp => resp.json())
    }
    
    static getCategories () {
        return fetch(this.categoriesUrl)
        .then(resp => resp.json())
    }

    static createProduct (product) {
        return fetch(this.productsUrl, {
            method: "POST",
            headers: { "Content-Type": "application/json",
            Authorization: localStorage.getItem('token') },
            body: JSON.stringify(product)
        }).then(resp => resp.json())
     }

    static removeProductFromSale (id) {
        return fetch(`${this.productsUrl}/${id}`, {
            method: "DELETE",
            headers: { "Content-Type": "application/json",
            Authorization: localStorage.getItem('token') },
        }).then(resp => resp.json())
    }

    static createCustomerBasket (customer) {
        return fetch(this.basketUrl, {
            method: 'POST', 
            headers: { "Content-Type": "application/json",
            Authorization: localStorage.getItem('token') },
            body: JSON.stringify(customer)
        }).then(resp => resp.json())
    }

    static addToCustomerBasket (product) {
        return fetch(this.basketProductUrl, {
            method: 'POST',
            headers: { "Content-Type": "application/json",
            Authorization: localStorage.getItem('token') },
            body: JSON.stringify(product)
        }).then(resp => resp.json())
    }

    static removeProductFromBasket (product_id, basket_id) {
        return fetch(`${this.removeUrl}`, {
            method: "POST",
            headers: { "Content-Type": "application/json",
            Authorization: localStorage.getItem('token') },
            body: JSON.stringify({product_id, basket_id})
        }).then(resp => resp.json())
    }
}

export default API