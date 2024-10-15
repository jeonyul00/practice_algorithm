import Foundation


/// 두 단어가 1글자 차이가 맞는지 반환
func canTransform(_ currentWord: String, _ nextWord: String) -> Bool {
    let currentCharArr = Array(currentWord)
    let nextCharArr = Array(nextWord)
    var diff: Int = 0
    
    for i in 0..<currentCharArr.count {        
        if currentCharArr[i] != nextCharArr[i] {
            diff += 1
        }        
        if diff > 1 {
            return false
        }        
    }
    return diff == 1
    
}

func solution(_ begin:String, _ target:String, _ words:[String]) -> Int {    
    guard words.contains(target) else { return 0 }            
    var queue:[(String, Int)] = [(begin, 0)]
    var isVisited = Array(repeating: false, count: words.count)
    
    while !queue.isEmpty {
        let (currentWord, step) = queue.removeFirst()
        
        if currentWord == target {
            return step
        }
        
        // TODO: words에서 현재 단어외 한 글자만 다른 단어를 찾아서 반환
        for i in 0..<words.count {
            if !isVisited[i] && canTransform(currentWord, words[i]) {
                isVisited[i] = true
                queue.append((words[i], step + 1))
            }
        }        
    }
    
    return 0
}
