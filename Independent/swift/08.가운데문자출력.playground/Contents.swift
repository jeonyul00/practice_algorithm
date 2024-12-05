import UIKit

func solution(_ str:String) -> String {
    var halfCount = str.count / 2
    
    if str.count % 2 == 0 {
        let startIndex = str.index(str.startIndex, offsetBy: halfCount - 1)
        let endIndex = str.index(str.startIndex, offsetBy: halfCount + 1)
        return String(str[startIndex..<endIndex])
    } else {
        
        let halfIndex = str.index(str.startIndex, offsetBy: halfCount)
        return String(str[halfIndex])
    }
}
solution("study") // 5 => 3
solution("good") // 4 => 23
