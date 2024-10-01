func solution(_ strings: [String], _ n: Int) -> [String] {
    let sortedStrings = strings.sorted { 
        let firstChar = $0[$0.index($0.startIndex, offsetBy: n)]
        let secondChar = $1[$1.index($1.startIndex, offsetBy: n)]
        
        if firstChar == secondChar {
            return $0 < $1
        } else {
            return firstChar < secondChar
        }
    }
    
    return sortedStrings
}
