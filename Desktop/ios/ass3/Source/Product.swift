import Foundation

public struct Product: Hashable, Codable {
    public enum Category: String, Codable {
        case electronics, clothing, food, books
    }

    public let id: String
    public let name: String
    public let price: Double
    public let category: Category
    public let description: String

    public var displayPrice: String {
        String(format: "$%.2f", price)
    }

    public init?(id: String, name: String, price: Double, category: Category, description: String) {
        guard price > 0 else { return nil }
        self.id = id
        self.name = name
        self.price = price
        self.category = category
        self.description = description
    }
}