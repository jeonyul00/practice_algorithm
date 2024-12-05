import UIKit

func solution(_ test: [[Int]]) -> Int {
    var answer = 0
    let testCount = test.count
    let studentCount = test[0].count
    
    // 두 학생 (i, j)를 비교
    for i in 1...studentCount {
        for j in 1...studentCount {
            if i == j { continue }  // 같은 학생은 비교할 필요 없음
            var cnt = 0
            
            // 각 테스트에서 학생 i가 학생 j보다 앞에 있는지 확인
            for k in 0..<testCount {
                var pi = 0
                var pj = 0
                
                // 각 테스트에서 학생 i와 j의 순위 찾기
                for s in 0..<studentCount {
                    if test[k][s] == i {
                        pi = s
                    }
                    if test[k][s] == j {
                        pj = s
                    }
                }
                
                // 학생 i가 학생 j보다 앞에 있다면 카운트 증가
                if pi < pj {
                    cnt += 1
                }
            }
            
            // 모든 테스트에서 학생 i가 j보다 앞에 있다면 answer 증가
            if cnt == testCount {
                answer += 1
            }
        }
    }
    
    return answer
}

print(solution([[3, 4, 1, 2], [4, 3, 2, 1], [3, 1, 4, 2]]))
