/**
 * Question Link: https://leetcode.com/problems/replace-elements-with-greatest-element-on-right-side/
 */

class Solution {
    func replaceElements(_ arr: [Int]) -> [Int] {
        var arr = arr
        let endIndex = arr.count - 1
        var currentMax = -1
        
        for index in stride(from: endIndex, through: 0, by: -1) {
            let newMax = max(currentMax, arr[index])
            arr[index] = currentMax
            currentMax = newMax
        }
        return arr
    }
}
