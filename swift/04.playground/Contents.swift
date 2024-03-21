import UIKit


// 페이지 교체 알고리즘: LRU
let type = [
    "척추동물",
    "어류",
    "척추동물",
    "무척추동물",
    "파충류",
    "척추동물",
    "어류",
    "파충류",
];

func solution(animals:[String], page:Int) -> String {
    var chair = [String]()
    var answer = 0
    
    for animal in animals {
        if(chair.count < page){
            if let existingIndex = chair.firstIndex(of: animal){
                chair.remove(at: existingIndex)
                answer += 1
            } else {
                answer += 60
            }
            chair.append(animal)
        } else {
            if let existingIndex = chair.firstIndex(of: animal) {
                chair.remove(at: existingIndex)
                answer += 1
            } else {
                chair.removeFirst()
                answer += 60
            }
            chair.append(animal)
        }
    }
    return "\(answer / 60)분, \(answer % 60)초"
}

print(solution(animals: type, page: 3))
