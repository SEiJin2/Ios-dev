// Список студентов и баллов: среднее, min/max, статус vs среднее
import Foundation

let students: [String: Double] = [
    "Oleg": 88, "Aynur": 95, "Damir": 72, "Maria": 81
]

let scores = Array(students.values)
let avg = scores.reduce(0, +) / Double(scores.count)
let minScore = scores.min() ?? 0
let maxScore = scores.max() ?? 0

print("Average: \(avg)")
print("Min: \(minScore)")
print("Max: \(maxScore)")

for (name, score) in students {
    let status = score >= avg ? "above" : "below"
    print("\(name): \(score) (\(status) average)")
}
