
const bfs = (startX, startY, maps, n, m, directions) => {
    const queue = [[startX, startY, 1]];
    const visited = Array.from(Array(n), () => Array(m).fill(false));
    visited[startX][startY] = true;

    while (queue.length > 0) {
        const [x, y, distance] = queue.shift();

        if (x === n - 1 && y === m - 1) {
            return distance;
        }
        
        for (const [dx, dy] of directions) {
            const nx = x + dx;
            const ny = y + dy;
            
            if (nx >= 0 && ny >= 0 && nx < n && ny < m && maps[nx][ny] === 1 && !visited[nx][ny]) {
                visited[nx][ny] = true;
                queue.push([nx, ny, distance + 1]);
            }
        }
    }
    
    return -1;
};

function solution(maps) {
    const directions = [
        [0, 1], 
        [0, -1],
        [1, 0], 
        [-1, 0] 
    ];
    
    const n = maps.length;
    const m = maps[0].length;
    return bfs(0, 0, maps, n, m, directions);
}
