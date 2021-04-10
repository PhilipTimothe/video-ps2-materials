//: [⇐ Previous: 03 - Challenge - Functions](@previous)
//: ## Episode 04 - Overloading

// --------------------------------------
let passingGrade = 50
let jessyGrade = 49
let ozmaGrade = 87
let ozmaAllGrades = [60, 96, 87, 42]
// --------------------------------------


//: ### Function overloads

//: Overload using Different Number of Parameters
func getPassStatus(for grade: Int) -> Bool {
  grade >= passingGrade
}


//func getPassStatus(for grade: Int, lowestPass: Int) -> Bool {
//  grade >= lowestPass
//}


//: Use default values for parameters, instead of overloads, when you can



func getPassStatus(for grade: Int, lowestPass: Int = passingGrade) -> Bool {
  grade >= lowestPass
}

getPassStatus(for: ozmaGrade, lowestPass: 80)
getPassStatus(for: jessyGrade)


//: Overload using Different Parameter Types
//  It is not safe to overload using parameter types.

func getPassStatus(for grades: [Int]) -> Bool {
  var totalGrade = 0
  for grade in grades {
    totalGrade += grade
  }
  let averageGrade = totalGrade / grades.count
  return averageGrade >= passingGrade
}



//: Overload using Different Argument Labels, like Swift's `stride` functions

for i in stride(from: 10, to: 0, by: -2) {
  print(i)
}


// stride through includes the last value
for i in stride(from: 10, through: 0, by: -2) {
  print(i)
}


//: Overload using Different Return Types
func getValue() -> Int {
  return 13
}

func getValue() -> String {
  return "meow"
}

// The compiler needs the function to be called with the type explicitly or else it wont have any idea which function to call

let intValue: Int = getValue()


//: [⇒ Next: 05 - Advanced Parameters](@next)

