import Foundation

func solution(_ food:[Int]) -> String {
    var halfSide: [String] = []
    
    for i in 1..<food.count {
        let portion:Int = food[i] / 2
        if portion > 0 {
            halfSide.append(String(repeating:"\(i)", count: portion)) // rep
        }
    }
    
    return halfSide.joined() + "0" + halfSide.reversed().joined()         
}