class Solution {
    func toLowerCase(_ str: String) -> String {
        let s1: [Character] = str.map { strChar in
            let val: UInt32 = (strChar.unicodeScalars.first?.value)!
            var up: UInt32 = 0
            if (val) >= 65 && (val) <= 90 {
                up = 32
            }
            return Character(UnicodeScalar(val+up)!)
        }
        return String(s1)
    }
}
