import SwiftUI

func lemonadeChange(_ bills: [Int]) -> Bool {
    var fives = 0
    var tens = 0
    
    for bill in bills{
        if bill == 5 {fives += 1}
        else if bill == 10 {
            tens += 1
            if fives >= 1{
                fives -= 1
            }
            else{
                return false
            }
        }
        else if bill == 20{
            if fives > 0 && tens > 0{
                fives -= 1
                tens -= 1
            }
            else if fives >= 3{
                fives -= 3
            }
            else{
                return false
            }
        }
    }
    return true
}
