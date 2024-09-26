import Foundation

func solution(_ my_string:String) -> [Int] {
    var arr: [Int] = []    
    for char in my_string {
        if let num = Int(String(char)) {
            arr.append(num)
        }                
    }    
    return arr.sorted()
}