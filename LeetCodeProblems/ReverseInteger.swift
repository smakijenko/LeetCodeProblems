import SwiftUI

func reverse(_ x: Int) -> Int{
    var xText = String(x)
    var newXText = ""
    for i in xText.reversed(){
        newXText.append(i)
    }
    if newXText.last == "-"{
        newXText.removeLast()
        newXText.insert("-", at: newXText.startIndex)
    }
    if Int(newXText)! >= -2147483648 && Int(newXText)! <= 2147483647{
        return Int(newXText)!
    }
    else{
        return 0
    }
}
