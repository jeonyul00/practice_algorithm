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

//solution(3)


// --
func recursion(_ num: Int) -> String {
    
    guard num > 0 else { return "이진수는 -----> " }        
    return recursion(num / 2) + String(num % 2)
    
}

// 재귀 이진수 출력
func solution2(_ num:Int) -> String {
    if num == 0 { return "0" }
    return recursion(num)
}

print(solution2(11))
