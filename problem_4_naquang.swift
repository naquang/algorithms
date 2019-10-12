class Solution {
    func numJewelsInStones(_ J: String, _ S: String) -> Int {
        var count = 0
        let j = Array(J)
        let s = Array(S)
        for index in 0..<j.count{
            let jewel = j[index]
            for i in 0..<s.count{
                let stone = s[i]
                if jewel == stone{
                    count += 1
                }
            }
        }
        return count
    }
}
