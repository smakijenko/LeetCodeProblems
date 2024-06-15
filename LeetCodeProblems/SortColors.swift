import SwiftUI

func sortColors(_ nums: inout [Int]){
    for i in 0 ..< nums.count{
        for j in 1 ..< nums.count - i{
            if(nums[j-1] > nums[j]){
                nums.swapAt(j-1, j)
            }
        }
    }
}
