// Простые числа: isPrime и вывод всех простых 1..100
func isPrime(_ number: Int) -> Bool {
    if number < 2 { return false }
    if number == 2 { return true }
    if number % 2 == 0 { return false }
    var d = 3
    while d * d <= number {
        if number % d == 0 { return false }
        d += 2
    }
    return true
}

for n in 1...100 {
    if isPrime(n) { print(n) }
}
