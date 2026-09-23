class Solution {
    func minOperations(_ nums: [Int], _ x: Int) -> Int {
    let total = nums.reduce(0, +)
    let target = total - x
    
    if target < 0 { return -1 }
    if target == 0 { return nums.count }
    
    var left = 0
    var sum = 0
    var maxLen = -1
    
    for right in 0..<nums.count {
        sum += nums[right]
        
        while left <= right && sum > target {
            sum -= nums[left]
            left += 1
        }
        
        if sum == target {
            maxLen = max(maxLen, right - left + 1)
        }
    }
    
    return maxLen == -1 ? -1 : nums.count - maxLen
}
}