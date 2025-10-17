
import Foundation

print("Enter a sentence:")
guard let line = readLine() else { exit(0) }


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
