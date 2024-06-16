import SwiftUI

func intToRoman(_ num: Int) -> String {
    let numStr = String(num)
    let numCount = numStr.count
    var posCount = 0
    var roman = ""
    for n in stride(from: numCount - 1, to: -1, by: -1){
        let index = numStr.index(numStr.startIndex, offsetBy: n)
        let digit = Int(String(numStr[index]))
        switch posCount{
        case 0:
            if digit! == 0{
                break
            }
            if 1 ... 3 ~= digit!{
                for _ in 1 ... digit! {
                    roman.insert("I", at: roman.startIndex)
                }
            }
            if digit! == 4{
                roman.insert(contentsOf: "IV", at: roman.startIndex)
            }
            if digit == 5{
                roman.insert("V", at: roman.startIndex)
            }
            if 6 ... 8 ~= digit!{
                for _ in 1 ... digit! - 5{
                    roman.insert("I", at: roman.startIndex)
                }
                roman.insert("V", at: roman.startIndex)
            }
            if digit! == 9{
                roman.insert(contentsOf: "IX", at: roman.startIndex)
            }
        case 1:
            if digit! == 0{
                break
            }
            if 1 ... 3 ~= digit!{
                for _ in 1 ... digit! {
                    roman.insert("X", at: roman.startIndex)
                }
            }
            if digit! == 4{
                roman.insert(contentsOf: "XL", at: roman.startIndex)
            }
            if digit == 5{
                roman.insert("L", at: roman.startIndex)
            }
            if 6 ... 8 ~= digit!{
                for _ in 1 ... digit! - 5{
                    roman.insert("X", at: roman.startIndex)
                }
                roman.insert("L", at: roman.startIndex)
            }
            if digit! == 9{
                roman.insert(contentsOf: "XC", at: roman.startIndex)
            }
        case 2:
            if digit! == 0{
                break
            }
            if 1 ... 3 ~= digit!{
                for _ in 1 ... digit! {
                    roman.insert("C", at: roman.startIndex)
                }
            }
            if digit! == 4{
                roman.insert(contentsOf: "CD", at: roman.startIndex)
            }
            if digit == 5{
                roman.insert("D", at: roman.startIndex)
            }
            if 6 ... 8 ~= digit!{
                for _ in 1 ... digit! - 5{
                    roman.insert("C", at: roman.startIndex)
                }
                roman.insert("D", at: roman.startIndex)
            }
            if digit! == 9{
                roman.insert(contentsOf: "CM", at: roman.startIndex)
            }
        case 3:
            for _ in 1 ... digit!{
                roman.insert("M", at: roman.startIndex)
            }
        default:
            break
        }
        posCount += 1
    }
   return roman
}
