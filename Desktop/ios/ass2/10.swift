
func hasUniqueCharacters(_ text: String) -> Bool {
    var seen = Set<Character>()
    for ch in text {
        if seen.contains(ch) { return false }
        seen.insert(ch)
    }
    return true
}

// Примеры:
print(hasUniqueCharacters("Oleg"))  
print(hasUniqueCharacters("Hello")) 
