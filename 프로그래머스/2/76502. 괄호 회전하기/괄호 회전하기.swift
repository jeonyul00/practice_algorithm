import Foundation

func isValid(_ str: String) -> Bool {
    var stack: [Character] = []
    
    for char in str {
        if char == "(" || char == "{" || char == "[" {
            stack.append(char)
        } else {
            if stack.isEmpty { return false }
            let last = stack.removeLast()
            if (char == ")" && last != "(") || (char == "}" && last != "{") || (char == "]" && last != "[") {
                return false
            }
        }
    }
    return stack.isEmpty
}

func solution(_ s:String) -> Int {
    var rotatedString = s
    let length = s.count
    var count = 0
        
    for _ in 0..<length {
        if isValid(rotatedString) {
            count += 1
        }
                
        let firstChar = rotatedString.removeFirst()
        rotatedString.append(firstChar)
    }
    
    return count

}