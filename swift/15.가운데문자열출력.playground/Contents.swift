import UIKit

func solution(_ str: String) -> String {
    let mid = str.count / 2
    
    if str.count % 2 == 0 {
        let startIndex = str.index(str.startIndex, offsetBy: mid - 1)
        let endIndex = str.index(str.startIndex, offsetBy: mid)
        return String(str[startIndex...endIndex])
    } else {
        let index = str.index(str.startIndex, offsetBy: mid)
        return String(str[index])
    }
}

print(solution("study"))
print(solution("good"))
