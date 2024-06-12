import SwiftUI

func romanToInt(_ s: String) -> Int{
    let romanValues: [Character: Int] = [
        "M": 1000,
        "D": 500,
        "C": 100,
        "L": 50,
        "X": 10,
        "V": 5,
        "I": 1
    ]
    var num = 0
    var prevValue = 0
    for char in s{
        let value = romanValues[char]
        num += value!
        switch value{
        case 1000:
            if prevValue == 100 {num -= 200}
        case 500:
            if prevValue == 100 {num -= 200}
        case 100:
            if prevValue == 10 {num -= 20}
        case 50:
            if prevValue == 10 {num -= 20}
        case 10:
            if prevValue == 1 {num -= 2}
        case 5:
            if prevValue == 1 {num -= 2}
        default:
            break
        }
        prevValue = value!
    }
    return num
}
