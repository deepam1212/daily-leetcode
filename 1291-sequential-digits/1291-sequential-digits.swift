class Solution {
    func sequentialDigits(_ low: Int, _ high: Int) -> [Int] {
        let digits = "123456789"
        let chars = Array(digits)
        var result: [Int] = []

        for length in 2...9 {
            var start = 0
            while start + length <= 9 {
                let num = Int(String(chars[start..<start + length]))!
                if num >= low && num <= high {
                    result.append(num)
                }
                start += 1
            }
        }

        return result.sorted()
    }
}