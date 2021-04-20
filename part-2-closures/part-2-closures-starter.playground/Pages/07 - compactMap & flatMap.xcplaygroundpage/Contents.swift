//: [⇐ Previous: 06 - forEach & map](@previous)
//: ## Episode 07: compactMap & flatMap

//: `compactMap`
// Compact Map helps deal with optionals or when a collection of data might produce optionals
// --------------------------------------
let userInput = ["meow!", "15", "37.5", "seven"]
// --------------------------------------

var arrayForInput: [Int] = []
for input in userInput {
  //  safe unrapping because not all array elements can be converted to an integer
  guard let input = Int(input) else {
    continue
  }
  arrayForInput.append(input)
}

arrayForInput

//compact map example
let validInput = userInput.compactMap { (input) in
  Int(input)
}

//: `flatMap`
// Helps handle mutildemensional arrays
// --------------------------------------
let arrayOfDwarfArrays = [
  ["Sleepy", "Grumpy", "Doc", "Bashful", "Sneezy"],
  ["Thorin", "Nori", "Bombur"]
]
// --------------------------------------

let dwarvesAfterM = arrayOfDwarfArrays.flatMap { (dwarves) -> [String] in
  var afterM: [String] = []
  for dwarf in dwarves where dwarf > "M" {
    afterM.append(dwarf)
  }
  return afterM
}

//: [⇒ Next: 08 - Challenge: Closures & Collections](@next)
