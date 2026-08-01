class Solution {
    func predictTheWinner(_ nums: [Int]) -> Bool {
        let n = nums.count
        var dp = Array(repeating: Array(repeating: 0, count: n), count: n)

        // Base case: only one number left
        for i in 0..<n {
            dp[i][i] = nums[i]
        }

        // Fill DP table for increasing subarray lengths
        if n >= 2 {
            for length in 2...n {
                for i in 0...(n - length) {
                    let j = i + length - 1
                    dp[i][j] = max(
                        nums[i] - dp[i + 1][j],
                        nums[j] - dp[i][j - 1]
                    )
                }
            }
        }

        return dp[0][n - 1] >= 0
    }
}