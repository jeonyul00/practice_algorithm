import Foundation

func solution(_ numlist: [Int], _ n: Int) -> [Int] {
    
    return numlist.sorted {
        let distance1 = abs($0 - n)
        let distance2 = abs($1 - n)
                
        if distance1 != distance2 {
            return distance1 < distance2            
        } else {
            return $0 > $1
        }
    }
}
