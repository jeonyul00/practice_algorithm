// 가로든 세로든 더 긴 녀석을 0번 인덱스로 몰아
// 그런 후 제일 큰 가로 * 제일 큰 세로 리턴 때려

function solution(sizes) {    
    let maxW = 0
    let maxH = 0    
    for(const [w,h] of sizes) {
        const big = Math.max(w,h)
        const small = Math.min(w,h)
        maxW = Math.max(maxW, big)
        maxH = Math.max(maxH, small)        
    }        
    return maxW * maxH    
}