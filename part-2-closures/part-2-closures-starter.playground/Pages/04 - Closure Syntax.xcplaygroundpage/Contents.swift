//: [⇐ Previous: 03 - Challenge - Closures](@previous)
//: ## Episode 04: Closure Syntaxes

// --------------------------------------
typealias Operate = (Int, Int) -> Int
// --------------------------------------

let longClosure = { (a: Int, b: Int) -> Int in
  a * b
}

// When specifying the type implicitly the types in the parameter list can be removed
//let noParameterTypes = { (a: Int, b: Int) -> Int in
//  a * b
//}
let noParameterTypes: Operate = { (a, b) -> Int in
  a * b
}

// When specifying the return type implicitly it can be removed from the closure
let noReturnType: Operate = { (a, b) in
  a * b
}

// Use dollar sign to refer to a and b parameters
let shortClosure: Operate = { $0 * $1 }

longClosure(4,5)
noParameterTypes(4,8)
noReturnType(4,6)
shortClosure(4,7)

// Closure expression that returns nothing
let voidClosure: () -> Void = { () -> Void in
  
}

// recommended void closure
let voidClosureTwo: () -> Void = {
  print("Swift")
}
voidClosureTwo()


// Trailing closures 
// --------------------------------------
func printResult(_ a: Int, _ b: Int, _ operate: Operate) {
  print(operate(a, b))
}
// --------------------------------------

printResult(10, 3, { $0 * $1 + 10 })
printResult(10, 3) { (a, b) -> Int in
  a * b + 20
}

//: [⇒ Next: 05 - Challenge - Closure Syntaxes](@next)
