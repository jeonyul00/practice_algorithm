import Foundation

func solution(_ s:String) -> [Int] {                
    var s:String = s
    
    s.removeFirst()
    s.removeLast()
    
    let sets = s.split(separator: "}").map { $0.replacingOccurrences(of: "{", with: "").replacingOccurrences(of: "}", with: "").split(separator: ",").map { str in Int(str)! } }                
    let sortedSets = sets.sorted { $0.count < $1.count }        
    var answer: [Int] = []
    var numbers: Set<Int> = []
        
    for i in sortedSets {
        for j in i {
            if !numbers.contains(j) {
                answer.append(j)
                numbers.insert(j)
            }
        }
    }
    return answer
}