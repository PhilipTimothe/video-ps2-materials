//: [⇐ Previous: 05 - Challenge - Closure Syntax](@previous)
//: ## Episode 06: forEach & map
import Foundation

// --------------------------------------
var prices = [1.50, 10.00, 4.99, 2.30, 8.19]
// --------------------------------------

//: `forEach` - Loops over a collection and performs an operation
for price in prices {
  print(price)
}

prices.forEach { (price) in
  print(price)
}

// Shorter form
prices.forEach {
  print($0)
}


//: `map` - Loops over an array, executes closure code, returns a new array
var arrayForSalePrices: [Double] = []

for price in prices {
  arrayForSalePrices.append(price * 0.9)
}

arrayForSalePrices

let salePrices = prices.map { (price) -> Double in
  price * 0.9
}

// Shorter syntax
let salePrices_2 = prices.map { $0 * 0.9 }

// return a string
let priceLabel = prices.map { (price) -> String in
  // Include string initializer, which also rounds down to 2 decimal places
  String(format: "%.2f", price)
  //  price * 0.9
}



//: [⇒ Next: 07 - compactMap & flatMap](@next)
