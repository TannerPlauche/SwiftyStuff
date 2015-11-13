//: Playground - noun: a place where people can play

import UIKit

func divide (#number: Int, #divisor:Int) -> Bool? {
    if number % divisor == 0 {
        return true
    } else {
        return nil
    }
}


//unwrapping optional
if let result = divide(number: 10, divisor: 3) {
    println("Divisible")
} else {
    println("Not divisible")
}


