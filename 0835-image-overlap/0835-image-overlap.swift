class Solution {
    func largestOverlap(_ img1: [[Int]], _ img2: [[Int]]) -> Int {
        let n = img1.count
        var result = 0
        
        for dr in -(n - 1)...(n - 1) {
            for dc in -(n - 1)...(n - 1) {
                var count = 0
                
                for r in 0..<n {
                    for c in 0..<n {
                        let nr = r + dr
                        let nc = c + dc
                        
                        if nr >= 0 && nr < n && nc >= 0 && nc < n {
                            if img1[r][c] == 1 && img2[nr][nc] == 1 {
                                count += 1
                            }
                        }
                    }
                }
                
                result = max(result, count)
            }
        }
        
        return result
    }
}