import UIKit


func DFS(_ num: Int) {
    if num == 0 {
        return
    }
    print(num) // 3, 2, 1
    DFS(num - 1)
    print(num) // 1, 2, 3
}

func solution(_ num: Int) {
    DFS(num)
}

solution(3)

