//: Playground - FizzBuzz

import UIKit

let range = 1...100

for number in range{
        if number % 3 == 0{
        println("\(number)  Fizz")
        } else if number % 5 == 0 {
            println("\(number)  Buzz")
        } else  if  number % 3 == 0 && number % 5 == 0 {
            println("\(number) FizzBuzz")
        } else {
            println("\(number)")
    }
}

