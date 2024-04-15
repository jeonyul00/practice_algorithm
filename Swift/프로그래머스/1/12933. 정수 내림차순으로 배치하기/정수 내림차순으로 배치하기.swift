func solution(_ n:Int64) -> Int64 {     
    let str = String(n)        
    let sortedArray = str.sorted(by: >)    
    let sortedString = String(sortedArray)
    
    if let sortedInt = Int64(sortedString) {
        return sortedInt
    } else {    
        return 0
    }
}