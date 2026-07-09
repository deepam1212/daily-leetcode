class Solution {
    func pathExistenceQueries(_ n: Int, _ nums: [Int], _ maxDiff: Int, _ queries: [[Int]]) -> [Bool] {
        // group[i] = connected component of index i
        var group = Array(repeating: 0, count: n)
        var id = 0

        for i in 1..<n {
            if nums[i] - nums[i - 1] > maxDiff {
                id += 1
            }
            group[i] = id
        }

        var answer = [Bool]()
        answer.reserveCapacity(queries.count)

        for query in queries {
            answer.append(group[query[0]] == group[query[1]])
        }

        return answer
    }
}