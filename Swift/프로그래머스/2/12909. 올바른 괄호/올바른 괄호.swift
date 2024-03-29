import Foundation

func solution(_ s:String) -> Bool {    
    var arr:[Character] = []    
    for char in s {        
        if char == "(" {
            arr.append("(")
        } else if char == ")" {
            if arr.isEmpty {
                return false
            }
            arr.popLast()
        }    
    }            
    return arr.isEmpty
}
