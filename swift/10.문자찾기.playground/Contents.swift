import UIKit

func solution(_ str:String, _ char: Character) -> Int {
    var count:Int = 0
        
    for i in str {
        if i == char {
            count += 1
        }
    }
    return count
}

print(solution("COMPUTERPROGRAMMING","R"))
