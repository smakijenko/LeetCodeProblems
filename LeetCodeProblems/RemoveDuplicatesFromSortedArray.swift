import SwiftUI

func removeDuplicates(_ nums: inout [Int]) -> Int {
    var subNums: [Int] = []
    for i in 0 ..< nums.count{
        let index = nums.index(0, offsetBy: i)
        if subNums.contains(nums[index]) == false{
            subNums.append(nums[index])
        }
    }
    nums = subNums
    let k = nums.count
    return k
}
