function solution(begin, target, words) {
    if (!words.includes(target)) return 0

    let queue = [[begin, 0]]
    
    while (queue.length > 0) {
        let [currentWord, step] = queue.shift()

        if (currentWord === target) return step

        words.forEach((word, index) => {
            let diff = 0
            for (let i = 0; i < word.length; i++) {
                if (word[i] !== currentWord[i]) diff++
            }
            if (diff === 1) {
                queue.push([word, step + 1])
                words.splice(index, 1)
            }
        });
    }    
}