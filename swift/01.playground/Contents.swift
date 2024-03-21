import UIKit

let data = [
    "   + -- + - + -   ",
    "   + --- + - +   ",
    "   + -- + - + -   ",
    "   + - + - + - +   ",
];

func solution(_ arr: [String]) -> String {
    var answer:String = ""
    for str in arr {
        // 2진수로 변환
        let binaryString  = str.replacingOccurrences(of: " ", with: "").replacingOccurrences(of: "+", with:"1").replacingOccurrences(of:"-" , with: "0")
        // 2진수 -> 10진수
        if let decimaValue = UInt8(binaryString, radix: 2) {
            answer += String(Character(UnicodeScalar(decimaValue)))
        }
    }
    return answer
}

print(solution(data))



