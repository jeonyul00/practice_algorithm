func solution(_ n:Int, _ words:[String]) -> [Int] {
    var prevWords: Set<String> = [words[0]]    
    for i in 1..<words.count {
        let currentWord = words[i]
        let lastWord = words[i-1]        
        if lastWord.last != currentWord.first || prevWords.contains(currentWord) {        
            return [(i % n) + 1, (i / n) + 1]
        }
        prevWords.insert(currentWord)
    }    
    return [0,0]

}