//: Final Project

import UIKit

//class for shape************************
class Shape {
    let name: String
    let sides: Int
    
    init( name: String, sides: Int){
        self.name = name
        self.sides = sides
    }
}


//Subclass for square from shape****************
class square: Shape {
    var sidelength : Double = 0.0
    var area: Double {
        get {
            return sidelength * sidelength
        }
        set{
            sidelength = sqrt(newValue)
        }
    }
    
    init(name: String, sides: Int, sidelength: Double) {
       super.init(name: name, sides: sides)
        self.sidelength = sidelength
    }
    
    convenience init (sidelength: Double) {
        self.init (name: "My Square", sides: 4, sidelength: sidelength)
        
    }
    
}

var mySquare = square(sidelength: 5.0)
mySquare.name
mySquare.sides
mySquare.sidelength
mySquare.area
mySquare.area = 100
mySquare.sidelength


