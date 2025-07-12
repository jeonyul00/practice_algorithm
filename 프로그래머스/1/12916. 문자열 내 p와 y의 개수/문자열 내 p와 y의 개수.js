function solution(s){    
    let pCount = 0
    let yCount = 0

    for(char of s) {
        if(char.toUpperCase() === 'P') {
            pCount++
        } else if(char.toUpperCase() === 'Y') {
            yCount++
        }
    }

    return pCount === yCount;
}