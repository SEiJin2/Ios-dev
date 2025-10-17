var firstName = "Oleg"
var lastName = "Lee"
var height = 1.73
var birthYear = 2004
var isStudent = true
let currentYear = 2025
var age = currentYear - birthYear
var hobby1 = "Gym"
var hobby2 = "Billiard"
var hobby3 = "Gaming"
var numberOfHobbies = 3
var favoriteNumber = 8
var favoriteMusic = "All"
var lovesCoding = false
var fullName = firstName + " " + lastName


var lifeStory = """
My name is \(fullName). 
I am \(age) years old, born in \(birthYear). 
I am currently a student: \(isStudent). 
My height is \(height)m. 
I enjoy \(hobby1)\(hobby2)\(hobby3), I have \(numberOfHobbies) hobbies,
and my favorite number is \(favoriteNumber).
I like \(favoriteMusic) music 
and it is \(lovesCoding) that I love coding.
"""

var futureGoals = "In the future, I hope to become a successful man of society,"
  lifeStory += futureGoals
print(lifeStory)
print("TEST ✅")
