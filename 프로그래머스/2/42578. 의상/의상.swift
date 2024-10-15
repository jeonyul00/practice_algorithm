import Foundation

func solution(_ clothes: [[String]]) -> Int {
    var clothesDict: [String: Int] = [:]
    
    for item in clothes {
        let type = item[1]
        clothesDict[type, default: 0] += 1
    }
    
    var combinations = 1
    
    for count in clothesDict.values {
        combinations *= (count + 1)
    }
    
    return combinations - 1
}
