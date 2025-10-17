// fibonacci(n): первые n чисел Фибоначчи
func fibonacci(_ n: Int) -> [Int] {
    if n <= 0 { return [] }
    if n == 1 { return [0] }
    var arr = [0, 1]
    if n == 2 { return arr }
    for _ in 2..<n {
        arr.append(arr[arr.count - 1] + arr[arr.count - 2])
    }
    return arr
}

// Пример:
print(fibonacci(10)) // [0, 1, 1, 2, 3, 5, 8, 13, 21, 34]
