// 백트래킹
function solution(tickets) {    
    tickets.sort()
    const isVisit = Array(tickets.length).fill(false)
    let answer = [];
    const route = ["ICN"]
    
    function DFS(current, count) {
        if(count === tickets.length) {
            answer = route.slice()
            return true
        } else {
            for(let i = 0; i < tickets.length; i++) {
                const [from, to] = tickets[i]
                if(!isVisit[i] && from === current){
                    isVisit[i] = true
                    route.push(to)
                    if(DFS(to, count + 1)) return true
                    route.pop()
                    isVisit[i] = false
                }
            }
            
        }
    }
        
    DFS(route[0],0)
    return answer;
}