
function solution(participant, completion) {
    const hash = new Map()
    
    for(const person of participant) {
        if(hash.get(person)) {
            hash.set(person,(hash.get(person) || 0) + 1)
        } else {
            hash.set(person, 1)
        }
    }
       
    for(const winner of completion) {                
        hash.set(winner, hash.get(winner) - 1)        
    }
    
    for(const [name, count] of hash) {
        if(count > 0) return name
    }
}