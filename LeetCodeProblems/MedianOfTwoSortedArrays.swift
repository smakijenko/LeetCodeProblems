import SwiftUI

func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double{
    let arrayUnsorted = nums1 + nums2
    let arraySorted = arrayUnsorted.sorted()
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
}
