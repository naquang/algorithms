class Solution {
    func reverse(_ x: Int) -> Int {
        var reserveNumber = 0
        var getX = abs(x)
        while getX != 0
        {
            reserveNumber = reserveNumber*10 + getX % 10
            
            if (getX % 10 == 0 && getX/10 == 0){
                return 0
            }
            getX = getX/10
        }
        
        if reserveNumber > Int32.max || reserveNumber < Int32.min
        {
            return 0
        }
        
        return x < 0 ? -reserveNumber : reserveNumber
    }
}
