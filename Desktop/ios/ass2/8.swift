// Палиндром: игнорируем пробелы и пунктуацию, без учета регистра
import Foundation

func isPalindrome(_ text: String) -> Bool {
    let filtered = text
        .lowercased()
        .components(separatedBy: CharacterSet.alphanumerics.inverted)
        .joined()
    return filtered == String(filtered.reversed())
}

// Примеры:
print(isPalindrome("A man, a plan, a canal: Panama")) 
print(isPalindrome("Oleg")) // 
