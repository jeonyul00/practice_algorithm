import Foundation

func solution(_ n: Int) -> Int {
    var strN = String(n)
    var charArray = Array(strN)
    
    var digits = [Int]()
    for i in 0..<charArray.count {
        if let num = Int(String(charArray[i])) {
            if num >= 0 && num <= 9 {
                digits.append(num)
            }
        }
    }
    
    var reversedDigits:[Int] = digits.reversed()
    
    var sumOfDigits = 0
    var tempSum = 0
    var finalSum = 0
    
    for i in 0..<digits.count {
        if digits[i] % 2 == 0 {
            tempSum += digits[i] * 2 / 2
        } else {
            tempSum += digits[i]
        }
    }
    
    for i in 0..<reversedDigits.count {
        finalSum += reversedDigits[i]
    }
    
    sumOfDigits = (tempSum + finalSum) / 2
    
    return sumOfDigits
}
