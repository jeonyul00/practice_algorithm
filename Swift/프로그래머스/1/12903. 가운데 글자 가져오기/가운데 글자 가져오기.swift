func solution(_ s:String) -> String {
    let middle = s.count / 2    
    if s.count % 2 == 0 {
        let start = s.index(s.startIndex, offsetBy: middle - 1)
        let end = s.index(s.startIndex, offsetBy: middle)
        return String(s[start...end])
    } else {
        var middleString:String.Index = s.index(s.startIndex, offsetBy: middle)        
        return String(s[middleString])    
    }      
}