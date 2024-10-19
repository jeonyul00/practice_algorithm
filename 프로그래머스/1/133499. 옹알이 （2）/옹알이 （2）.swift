import Foundation

func solution(_ babbling: [String]) -> Int {
    let possibleWords = ["aya", "ye", "woo", "ma"]
    var count = 0

    for word in babbling {
        var tempWord = word
        var isValid = true
        var lastPronounced = ""

        while !tempWord.isEmpty {
            var found = false
            
            for possible in possibleWords {
                if tempWord.hasPrefix(possible) {
                    if lastPronounced == possible {
                        isValid = false
                        break
                    }
                    
                    lastPronounced = possible
                    tempWord.removeFirst(possible.count)
                    found = true
                    break
                }
            }

            if !found {
                isValid = false
                break
            }
        }

        if isValid {
            count += 1
        }
    }
    
    return count
}