import UIKit

func solution(_ str: String) -> Int {
    var count:Int = 0
    
    for char in str {
        if char.uppercased() == String(char) {
            count += 1
        }
    }
    return count
    
}

print(solution("KoreaTimeGood"))
