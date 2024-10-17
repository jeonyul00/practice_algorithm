import Foundation

func solution(_ name:[String], _ yearning:[Int], _ photo:[[String]]) -> [Int] {    
    var dict:[String:Int] = [:]
    var answer:Array<Int> = []    
    for i in 0..<name.count {
        dict[name[i]] = yearning[i]    
    }    
    for i in photo {
        var num: Int = 0
        
        for j in i {
            num += dict[j] ?? 0
        }
        answer.append(num)
    }    
    return answer
}