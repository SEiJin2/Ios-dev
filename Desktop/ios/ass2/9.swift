// Простой калькулятор: + - * /, многократные вычисления, деление на 0
import Foundation

func add(_ a: Double, _ b: Double) -> Double { a + b }
func sub(_ a: Double, _ b: Double) -> Double { a - b }
func mul(_ a: Double, _ b: Double) -> Double { a * b }
func div(_ a: Double, _ b: Double) -> Double? { b == 0 ? nil : a / b }

while true {
    print("Enter first number:", terminator: " ")
    guard let aStr = readLine(), let a = Double(aStr) else { print("Invalid"); continue }
    print("Enter operation (+ - * /):", terminator: " ")
    guard let op = readLine(), let ch = op.first else { print("Invalid"); continue }
    print("Enter second number:", terminator: " ")
    guard let bStr = readLine(), let b = Double(bStr) else { print("Invalid"); continue }

    switch ch {
    case "+":
        print("Result: \(add(a,b))")
    case "-":
        print("Result: \(sub(a,b))")
    case "*":
        print("Result: \(mul(a,b))")
    case "/":
        if let r = div(a,b) { print("Result: \(r)") }
        else { print("Error: division by zero") }
    default:
        print("Unknown operation")
    }

    print("Again? (y/n):", terminator: " ")
    if (readLine()?.lowercased() != "y") { break }
}
