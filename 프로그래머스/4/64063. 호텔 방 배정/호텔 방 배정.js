function solution(k, room_number) {
    let assigned = new Map();
    let answer = [];
    
    for (let i = 0; i < room_number.length; i++) {
        let room = room_number[i];
        let visit = new Set();
        
        while (assigned.has(room)) {
            visit.add(room);
            room = assigned.get(room) + 1;
        }
    
        answer.push(room);
        visit.add(room); 
        
        visit.forEach(v => {
            assigned.set(v, room);
        });
    }

    return answer;
}
