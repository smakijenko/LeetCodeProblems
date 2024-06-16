import SwiftUI

func bubbleSort(_ nums: inout [Int]){
    for i in 0 ..< nums.count{
        for j in 1 ..< nums.count - i{
            if(nums[j-1] > nums[j]){
                nums.swapAt(j-1, j)
            }
        }
    }
}

func quicksort(_ arr:[Int]) -> [Int]{
    var lessVal = [Int]()
    var equalVal = [Int]()
    var greaterVal = [Int]()
    
    if arr.count > 1{
        let pivotVal = arr[0]
        
        for x in arr{
            if x < pivotVal{
                lessVal.append(x)
            }
            if x == pivotVal{
                equalVal.append(x)
            }
            if x > pivotVal{
                greaterVal.append(x)
            }
        }
        return (quicksort(lessVal) + equalVal + quicksort(greaterVal))
    }
    else{
        return arr
    }
}
