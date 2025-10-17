import Foundation

public final class ShoppingCart: Codable {
    public private(set) var items: [CartItem] = []
    public var discountCode: String? = nil

    public init() {}

    public func addItem(product: Product, quantity: Int) {
        guard quantity > 0 else { return }
        if let idx = items.firstIndex(where: { $0.product.id == product.id }) {
            var existing = items[idx]
            existing.increaseQuantity(by: quantity)
            items[idx] = existing
        } else if var newItem = CartItem(product: product, quantity: quantity) {
            items.append(newItem)
        }
    }

    public func removeItem(productId: String) {
        items.removeAll { $0.product.id == productId }
    }

    public func updateItemQuantity(productId: String, newQuantity: Int) {
        guard newQuantity > 0 else { return }
        if let idx = items.firstIndex(where: { $0.product.id == productId }) {
            var item = items[idx]
            item.updateQuantity(newQuantity)
            items[idx] = item
        }
    }

    public func clearCart() {
        items.removeAll()
    }

    public var subtotal: Double {
        items.reduce(0) { $0 + $1.subtotal }
    }

    public var discountAmount: Double {
        guard let code = discountCode?.uppercased(), subtotal > 0 else { return 0 }
        switch code {
        case "SAVE10":
            return subtotal * 0.10
        case "SAVE20":
            return subtotal * 0.20
        default:
            return 0
        }
    }

    public var total: Double {
        max(0, subtotal - discountAmount)
    }

    public var itemCount: Int {
        items.reduce(0) { $0 + $1.quantity }
    }

    public var isEmpty: Bool {
        items.isEmpty
    }
}