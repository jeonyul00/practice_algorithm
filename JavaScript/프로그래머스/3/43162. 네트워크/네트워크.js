function solution(n, computers) {
    let visited = new Array(n).fill(false);
    let networkCount = 0;

    function dfs(start) {
        visited[start] = true;
        for (let i = 0; i < n; i++) {
            if (!visited[i] && computers[start][i] === 1) {
                dfs(i);
            }
        }
    }

    for (let i = 0; i < n; i++) {
        if (!visited[i]) {
            dfs(i);
            networkCount++;
        }
    }

    return networkCount;
}

// 예시 실행
console.log(solution(3, [[1, 1, 0], [1, 1, 0], [0, 0, 1]])); // 2
console.log(solution(3, [[1, 1, 0], [1, 1, 1], [0, 1, 1]])); // 1
