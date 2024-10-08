import UIKit

// DFS 깊이 우선 탐색 (트리 순회)
func DFS1(_ num: Int, preOrder: inout [Int], inOrder: inout [Int], postOrder: inout [Int]) {
    guard num <= 7 else { return }
    
    // 전위 순회: 노드 -> 왼쪽 -> 오른쪽
    preOrder.append(num)
    // 왼쪽 자식 노드로 이동
    DFS1(num * 2, preOrder: &preOrder, inOrder: &inOrder, postOrder: &postOrder)
    // 중위 순회: 왼쪽 -> 노드 -> 오른쪽
    inOrder.append(num)
    // 오른쪽 자식 노드로 이동
    DFS1(num * 2 + 1, preOrder: &preOrder, inOrder: &inOrder, postOrder: &postOrder)
    // 후위 순회: 왼쪽 -> 오른쪽 -> 노드
    postOrder.append(num)
}

// 재귀 이진 트리 순회 결과 배열 반환
func solution1(_ num: Int) -> ([Int], [Int], [Int]) {
    var preOrder: [Int] = []   // 전위 순회 결과
    var inOrder: [Int] = []    // 중위 순회 결과
    var postOrder: [Int] = []  // 후위 순회 결과
    
    DFS1(num, preOrder: &preOrder, inOrder: &inOrder, postOrder: &postOrder)
    return (preOrder, inOrder, postOrder)
}

// 순회 결과 출력
let result = solution1(1)
print("전위 순회:", result.0)
print("중위 순회:", result.1)
print("후위 순회:", result.2)

// --- 부분집합 구하기

print("--------------------")

func DFS2(_ n: Int, _ num: Int, _ checkArr: inout [Int], _ answer: inout [String]) {
    var temp: String = ""
    
    if n == num + 1 {
        for i in 1...num {
            if checkArr[i] == 1 {
                temp += String(i)
            }
        }
        if !temp.isEmpty {
            answer.append(temp)
        }
        return
    }
    
    checkArr[n] = 1
    DFS2(n + 1, num, &checkArr, &answer)
    checkArr[n] = 0
    DFS2(n + 1, num, &checkArr, &answer)
}

func solution2(_ num: Int) -> [String] {
    var answer: [String] = []
    var checkArr = Array(repeating: 0, count: num + 1)
    
    DFS2(1, num, &checkArr, &answer)
    
    return answer
}

print(solution2(3))
