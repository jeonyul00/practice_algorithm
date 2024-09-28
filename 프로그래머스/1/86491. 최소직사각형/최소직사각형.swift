import Foundation

func solution(_ sizes: [[Int]]) -> Int {
    var wMaxNumber: Int = 0
    var hMaxNumber: Int = 0
    
    for size in sizes {        
        let w = max(size[0], size[1])
        let h = min(size[0], size[1])        
        wMaxNumber = max(w, wMaxNumber)
        hMaxNumber = max(h, hMaxNumber)
    }
    
    return wMaxNumber * hMaxNumber
}
