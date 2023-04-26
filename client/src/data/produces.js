const allProduces = [
    {   
        id: 1,
        name: 'Artichokes',
        farm: 'Farmers Country',
        price: 2.90,
        sale: false,
        quantity: '2',
        image: 'https://images.unsplash.com/photo-1518735869015-566a18eae4be?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60',
        category: 'Vegetables'   
    },
    {
        id: 2,
        name: 'Brussel Sprouts',
        farm: 'Farmers Country',
        price: 3.90,
        sale: false,
        quantity: '500g',
        image: 'https://images.unsplash.com/photo-1438118907704-7718ee9a191a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80',
        category: 'Vegetables'   
    },
    {   
        id: 3,
        name: 'Apples',
        farm: 'Batch Farm',
        price: 2.90,
        sale: false,
        quantity: '1 kg',
        image: 'https://images.unsplash.com/photo-1549301014-95d119f5c960?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60',
        category: 'Fruits'   
    },
    {
        id: 4,
        name: 'Tomatoes',
        farm: 'Chalk Farm',
        price: 2.90,
        sale: false,
        quantity: '500g',
        image: 'https://images.unsplash.com/photo-1471194402529-8e0f5a675de6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60',
        category: 'Fruits'   
    }

]

export const getAll = async () => allProduces;

export const getByCategory = async category => allProduces.filter(produce => produce.category === category);




