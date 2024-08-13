import Foundation

class Solution {
    func isPalindrome(_ x: Int) -> Bool {
        let xStr = String(x)
        let paliStr = String(xStr.reversed())
        if xStr == paliStr {return true}
        return false
    }
}
