import Foundation

func solution(_ sides: [Int]) -> Int {
    let sortedSides = sides.sorted()
    
    if sortedSides[0] + sortedSides[1] > sortedSides[2] {
        return 1
    } else {
        return 2
    }
}
