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
