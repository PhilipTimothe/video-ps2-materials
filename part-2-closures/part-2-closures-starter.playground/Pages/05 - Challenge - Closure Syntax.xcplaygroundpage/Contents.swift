//: [⇐ Previous: 04 - Closure Syntax](@previous)
//: ## Episode 05: Challenge - Closure Syntax

/*:
 ## Challenge 1
 Rewrite the long closure with the following syntax:
  * No parameter types
  * No parameter or return types
  * No parameter names
 Try passing the same values into each closure. Their printed results should match!
*/

// --------------------------------------
let copyLines = { (offense: String, repeatCount: Int) -> Void in
  print( String(repeating: "I must not \(offense).", count: repeatCount) )
}
// --------------------------------------

// TODO: Write solution here

let noParams: (String, Int) -> Void = { (offense, repeatCount) -> Void in
  print( String(repeating: "I must not \(offense).", count: repeatCount) )
}

let noParamsAndReturn: (String, Int) -> Void = { (offense, repeatCount) in
  print( String(repeating: "I must not \(offense).", count: repeatCount) )
}

let noParamsNames: (String, Int) -> Void = { print( String(repeating: "I must not \($0).", count: $1) )
}

noParams("Scream", 2)

//: [⇒ Next: 06 - forEach and map](@next)
