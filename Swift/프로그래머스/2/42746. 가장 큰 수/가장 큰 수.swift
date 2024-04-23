import Foundation

func solution(_ numbers:[Int]) -> String {    
    var strArr: [String] = numbers.map { elements in String(elements) }.sorted { $0 + $1 > $1 + $0 }
    var answer:String = strArr.joined()    
    return answer.first == "0" ? "0" : answer
}