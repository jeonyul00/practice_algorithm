

function solution(numbers) {
    const nums = numbers.split("")
    const candidates = new Set();
    let answer = 0
    
    function permute(arr,cur) {
        if(cur.length > 0) {
            candidates.add(Number(cur))
        }
        if (arr.length === 0) return;
        for (let i = 0; i < arr.length; i++) {
            const nextArr = arr.slice();             
            const [digit] = nextArr.splice(i, 1);
            permute(nextArr, cur + digit);
        }
    }
    
    function isPrime(num) {
        if(num < 2) return false        
        for(let i = 2; i <= Math.sqrt(num); i++){
            if(num % i === 0) return false
        }
        return true        
    }
        
    permute(nums, '');
    
    for(num of candidates) {        
        if(isPrime(num)) answer++    
    }
    
    return answer;
}

