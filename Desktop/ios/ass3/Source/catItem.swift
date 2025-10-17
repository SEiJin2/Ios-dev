import Foundation

public struct CartItem: Codable {
    public let product: Product
    public private(set) var quantity: Int

    public var subtotal: Double {
        product.price * Double(quantity)
    }

    public init?(product: Product, quantity: Int) {
        guard quantity > 0 else { return nil }
        self.product = product
        self.quantity = quantity
    }

    public mutating func updateQuantity(_ newQuantity: Int) {
        guard newQuantity > 0 else { return }
        self.quantity = newQuantity
    }

    public mutating func increaseQuantity(by amount: Int) {
        guard amount > 0 else { return }
        self.quantity += amount
    }
}