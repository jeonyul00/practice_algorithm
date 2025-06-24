function solution(sizes) {    
    let maxW = -Infinity
    let maxH = -Infinity
    for (let [w, h] of sizes) {
        const width = Math.max(w, h);
        const height = Math.min(w, h);
        maxW = Math.max(maxW, width);
        maxH = Math.max(maxH, height);
    }
    return maxW * maxH;
}