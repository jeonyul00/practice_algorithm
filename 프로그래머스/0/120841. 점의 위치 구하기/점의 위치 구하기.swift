import Foundation

func solution(_ dot:[Int]) -> Int {
    if dot.first! > 0 && dot.last! > 0 {
        return 1
    } else if dot.first! > 0 && dot.last! < 0 {
        return 4
    } else if dot.first! < 0 && dot.last! < 0  {
        return 3
    } else {
        return 2    
    }
}