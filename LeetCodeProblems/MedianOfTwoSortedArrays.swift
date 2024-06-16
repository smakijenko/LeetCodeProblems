import SwiftUI

func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double{
    let arrayUnsorted = nums1 + nums2
    let arraySorted = quicksort(arrayUnsorted)
    if arraySorted.count % 2 == 0{
        let val1 = Double(arraySorted[arraySorted.count / 2 - 1])
        let val2 = Double(arraySorted[arraySorted.count / 2])
        return (val1 + val2) / 2.0
    }
    else{
        let i = Int((Double(arraySorted.count) / 2.0).rounded())
        let val = Double(arraySorted[i - 1])
        return val
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
}
