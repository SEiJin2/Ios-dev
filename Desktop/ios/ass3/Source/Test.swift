import Foundation

func runAllTests() {
    guard let laptop = Product(id: "p1", name: "Laptop", price: 1299.99, category: .electronics, description: "Ultrabook 13-inch"),
          let book = Product(id: "p2", name: "Swift Book", price: 29.99, category: .books, description: "Learn Swift fast"),
          let headphones = Product(id: "p3", name: "Headphones", price: 99.99, category: .electronics, description: "Wireless") else {
        print("Product init failed")
        return
    }

    print(laptop.displayPrice)

    let cart = ShoppingCart()
    cart.addItem(product: laptop, quantity: 1)
    cart.addItem(product: book, quantity: 2)
    cart.addItem(product: laptop, quantity: 1)

    print(cart.subtotal)
    print(cart.itemCount)

    cart.discountCode = "SAVE10"
    print(cart.total)

    cart.removeItem(productId: book.id)

    func modifyCart(_ cart: ShoppingCart) {
        cart.addItem(product: headphones, quantity: 1)
    }
    modifyCart(cart)

    if var item1 = CartItem(product: laptop, quantity: 1) {
        var item2 = item1
        item2.updateQuantity(5)
        print(item1.quantity)
        print(item2.quantity)
    }

    let address = Address(street: "Main St 1", city: "Almaty", zipCode: "050000", country: "Kazakhstan")
    let order = Order(from: cart, shippingAddress: address)

    cart.clearCart()

    print(order.itemCount)
    print(cart.itemCount)
}

runAllTests()