import Foundation

func solution(_ myString:String) -> [String] {
    let parts = myString.split(separator: "x").map { String($0) }
    
    return parts.sorted()
}