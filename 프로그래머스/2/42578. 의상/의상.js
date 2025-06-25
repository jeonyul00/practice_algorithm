function solution(clothes) {
    let answer = 1
    const typeCount = new Map()
    for(const [name, type] of clothes){
        typeCount.set(type, (typeCount.get(type) || 0) + 1);
    }
    for(const count of typeCount.values()){
        answer *= (count + 1)
    }
    return answer - 1;
}