class Solution {
    func numDistinct(_ s: String, _ t: String) -> Int {
        let s = Array(s)
        let t = Array(t)
        
        var dp = Array(repeating: 0, count: t.count + 1)
        dp[0] = 1
        
        for i in 0..<s.count {
            for j in stride(from: min(i, t.count - 1), through: 0, by: -1) {
                if s[i] == t[j] {
                    let (sum, overflow) = dp[j + 1].addingReportingOverflow(dp[j])
                    dp[j + 1] = overflow ? Int.max : sum
                }
            }
        }
        
        return dp[t.count]
    }
}