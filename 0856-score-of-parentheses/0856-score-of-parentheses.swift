class Solution {
    func scoreOfParentheses(_ s: String) -> Int {
        var stack = [Int]()
        stack.append(0)

        for ch in s {
            if ch == "(" {
                stack.append(0)
            } else {
                let inner = stack.removeLast()
                let score = inner == 0 ? 1 : 2 * inner
                stack[stack.count - 1] += score
            }
        }

        return stack[0]
    }
}
