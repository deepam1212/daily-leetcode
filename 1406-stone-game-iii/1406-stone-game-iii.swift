class Solution {
    func stoneGameIII(_ stoneValue: [Int]) -> String {
        let n = stoneValue.count
        var dp = Array(repeating: Int.min, count: n + 1)
        dp[n] = 0

        for i in stride(from: n - 1, through: 0, by: -1) {
            var sum = 0
            for j in i..<min(i + 3, n) {
                sum += stoneValue[j]
                dp[i] = max(dp[i], sum - dp[j + 1])
            }
        }

        if dp[0] > 0 {
            return "Alice"
        } else if dp[0] < 0 {
            return "Bob"
        } else {
            return "Tie"
        }
    }
}