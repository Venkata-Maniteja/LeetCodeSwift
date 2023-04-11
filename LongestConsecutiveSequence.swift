class Solution {

     /// Given an unsorted array of integers nums, return the length of the longest consecutive elements sequence.

     /// You must write an algorithm that runs in O(n) time.



    ///  Example 1:

    ///  Input: nums = [100,4,200,1,3,2]
    ///  Output: 4
    ///  Explanation: The longest consecutive elements sequence is [1, 2, 3, 4]. Therefore its length is 4.
    ///  Example 2:

    ///  Input: nums = [0,3,7,2,5,8,4,6,0,1]
    ///  Output: 9


    ///  Constraints:

    ///  0 <= nums.length <= 105
    ///  -109 <= nums[i] <= 109

    /// NeetCode explanation: https://www.youtube.com/watch?v=P6RZZMu_maU
    
    func longestConsecutive(_ nums: [Int]) -> Int {

        var longest = 0
        var length = 0
        let numSet = Set(nums)
        for num in numSet {
            let hasLeftNeigbor = numSet.contains(num - 1)
            if !hasLeftNeigbor {
                length = 0
                while(numSet.contains(num + length)) {
                    length += 1
                }
                longest = max(length, longest)
            } 
        }

        return longest
        
    }
}
