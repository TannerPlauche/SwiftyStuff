//: iOS Closures

import UIKit

let someLabel = UILabel()

UIView.animateWithDuration(1.0, animations: { () -> Void in
    someLabel.alpha = 0.3
    }) { (failure : Bool) -> Void in
        }

