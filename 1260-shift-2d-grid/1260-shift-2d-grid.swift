class Solution {
    func shiftGrid(_ grid: [[Int]], _ k: Int) -> [[Int]] {
        let m = grid.count
        let n = grid[0].count
        let total = m * n
        let k = k % total

        var result = Array(repeating: Array(repeating: 0, count: n), count: m)

        for i in 0..<m {
            for j in 0..<n {
                let index = i * n + j
                let newIndex = (index + k) % total

                let newRow = newIndex / n
                let newCol = newIndex % n

                result[newRow][newCol] = grid[i][j]
            }
        }

        return result
    }
}