//: Playground - noun: a place where people can play

import UIKit

var fahr = 100
var cel = 10.0

func fahrToCel (x) {
   var newcel = (x - 32.0) * (5/9)
    return newcel
}


fahrToCel(fahr)
