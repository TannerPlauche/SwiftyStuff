//: Closures


//this function takes a string a prints it. 

func printString(aString: String) {
    println("Printing a string passed in: \(aString).")
}

printString("Hi my name is Tanner")

let somefunction = printString

somefunction("Test string")

/*var myArray = ["Tanner", "Sarah", "Nikolai", "Simon", "Ana"]
println(myArray)

for item in myArray {
    println(item)
}

println(reverse(myArray))

func printNames (anArray) -> String {
    for (item) in anArray {
        println(item)
    }
}
*/


//new example

func printInt (number: Int) {
    println("Printing the number passed in:  \(number).")
}

let numberOfApples = 3
printInt(numberOfApples)

//new example
func displayString(printStringFunc: (String) -> Void) {
    printStringFunc("I'm a function inside another function")
}

//uses function from above (printstring)
displayString(printString)


//use filter function and closure
 let allNumbers = [ 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
println(allNumbers)

func isEven (i: Int) -> Bool {
    return i % 2 == 0
}

let ifEven = isEven

var evenNumbers = allNumbers.filter(ifEven)


//////////////////////////////////
///////Capturing Variable
//////////////////////////////////

//returning function
//func someFunc (num: Int) -> Void {}

func printerFunction () -> (Int) -> (){
    var runningTotal = 0
    func printInteger (number: Int) {
        println("This is the integer that we passed in: \(number).")
        runningTotal += 1
        println("The running total is: \(runningTotal).")
    }
    return printInteger
}

let printAndReturnIntegerFunc = printerFunction()
printAndReturnIntegerFunc(4)
printAndReturnIntegerFunc(2)

let printAndReturnIntegerFunc2 = printerFunction()

printAndReturnIntegerFunc2(1)
 printAndReturnIntegerFunc(3)



// closures chapter 2::::: Closure Expressions

func doubler (i: Int) -> Int{
    return i * 2
}

let doublefunction = doubler
doublefunction(2)
println(doublefunction(2))

let numbers = [1, 2, 3, 4, 5]

let doubleNumbers = numbers.map(doublefunction)

//using cloure expressions with the map function

let tripledNumbers = numbers.map({ (i: Int) -> Int in return i * 3 })
println(tripledNumbers)


//Using closure expressions with the sorted function

var names = ["Tanner", "Sarah", "Nikolai", "Simon", "Ana"]
//sorts alphabetically
func backwards (s1: String, s2: String) -> Bool {
    return s1 > s2
}

//sorted(names, backwards)
//println(sorted(names, backwards))

let sortedNames = sorted(names, {(s1: String, s2: String) -> Bool in return s1 > s2})
println(sortedNames)

/////////Closure shorthand syntax

let tripleFunction = { (i: Int) -> Int in return i * 3  }

numbers.map(tripleFunction)
// is equal to 
// Rule #1
numbers.map({ (i: Int) -> Int in return i * 3  })

// Rule #2 : Inferring type from context ----deleted the return -> Int, the array is all ints.
numbers.map({ i in return i * 3 })

// Rule #3: Implicit returns from single expression closures
numbers.map({ i in i * 3 })

//Rule #4: Shorthand arguement names

numbers.map({ $0 * 3 })

//Rule #5: Trailing Closures:  if the closure is the last argument, then you can put it outside the parentheses.
numbers.map() { $0 * 3 }
// you can move the brackets outside the parentheses so you can treat the brackets like a normal function
numbers.map() {
    (var digit: Int) -> Int in
    if digit % 2 == 0 {
        return digit
    }
    return digit
}

//Rule #6 : ignoring parenthese
numbers.map{ $0 * 3 }





import UIKit

let someLabel = UILabel()

UIView.animateWithDuration(1.0, animations: { () -> Void in
    someLabel.alpha = 0.3
    }) { (failure : Bool) -> Void in
        }

//testing crash error
//testing crash error
var int8 = 8
println(int8)




























