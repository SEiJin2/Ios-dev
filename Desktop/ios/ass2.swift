// FizzBuzz: 1..100 — Fizz (кратно 3), Buzz (кратно 5), FizzBuzz (кратно 3 и 5)
//1
//or n in 1...100 {
    if n % 15 == 0 {
        print("FizzBuzz")
    } else if n % 3 == 0 {
        print("Fizz")
    } else if n % 5 == 0 {
        print("Buzz")
    } else {
        print(n)
    }
//}
//2
// Простые числа: isPrime и вывод всех простых 1..100
//func isPrime(_ number: Int) -> Bool {
    if number < 2 { return false }
    if number == 2 { return true }
    if number % 2 == 0 { return false }
    var d = 3
    while d * d <= number {
        if number % d == 0 { return false }
        d += 2
    }
    return true
//}

//for n in 1...100 {
    if isPrime(n) { print(n) }
//}
// Конвертер температур C/F/K. Пример ввода:
//  Enter value: 36.6
//  Enter unit (C/F/K): C

import Foundation

func cToF(_ c: Double) -> Double { (c * 9/5) + 32 }
func cToK(_ c: Double) -> Double { c + 273.15 }
func fToC(_ f: Double) -> Double { (f - 32) * 5/9 }
func kToC(_ k: Double) -> Double { k - 273.15 }

print("Enter value:", terminator: " ")
guard let vStr = readLine(), let value = Double(vStr) else {
    print("Invalid value"); exit(0)
}

print("Enter unit (C/F/K):", terminator: " ")
guard let uStr = readLine(), let unit = uStr.uppercased().first, "CFK".contains(unit) else {
    print("Invalid unit"); exit(0)
}

switch unit {
case "C":
    let f = cToF(value), k = cToK(value)
    print("C=\(value), F=\(f), K=\(k)")
case "F":
    let c = fToC(value), k = cToK(c)
    print("F=\(value), C=\(c), K=\(k)")
case "K":
    let c = kToC(value), f = cToF(c)
    print("K=\(value), C=\(c), F=\(f)")
default:
    print("Unsupported unit")
}
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
// Подсчёт частот слов (без пунктуации, без учёта регистра)
import Foundation

print("Enter a sentence:")
guard let line = readLine() else { exit(0) }

// Удалим пунктуацию и приведём к нижнему регистру
let cleaned = line
    .lowercased()
    .components(separatedBy: CharacterSet.alphanumerics.inverted)
    .filter { !$0.isEmpty }

var freq: [String: Int] = [:]
for w in cleaned { freq[w, default: 0] += 1 }

// Вывод
for (word, count) in freq.sorted(by: { $0.key < $1.key }) {
    print("\(word): \(count)")
}
