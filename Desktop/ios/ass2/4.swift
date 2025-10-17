// Менеджер списка покупок: add/remove/show/exit
import Foundation

var list: [String] = []

func menu() {
    print("""
    1) Add item
    2) Remove item
    3) Show list
    4) Exit
    Choose:
    """, terminator: " ")
}

while true {
    menu()
    guard let choice = readLine(), let c = Int(choice) else { continue }
    switch c {
    case 1:
        print("Enter item:", terminator: " ")
        if let item = readLine(), !item.isEmpty { list.append(item) }
    case 2:
        print("Enter exact item to remove:", terminator: " ")
        if let item = readLine(), let idx = list.firstIndex(of: item) { list.remove(at: idx) }
    case 3:
        if list.isEmpty { print("(empty)") }
        else {
            for (i, it) in list.enumerated() { print("\(i+1). \(it)") }
        }
    case 4:
        print("Bye!"); exit(0)
    default:
        print("Invalid option")
    }
}
