import Foundation

func solution(_ brown:Int, _ yellow:Int) -> [Int] {
    var widthCount = 0
    var heightCount = 0
    let sum = brown + yellow
    
    for i in 1...sum {
        if sum % i == 0 {
            widthCount = sum / i
            heightCount = i
        }                
        if (widthCount-2) * (heightCount-2) == yellow { break }
    }
    
    return [widthCount, heightCount]
}