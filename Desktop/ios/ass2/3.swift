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
