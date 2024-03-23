import UIKit

struct Dog {
    var name: String
    var age: String
    var jump: String
    var weight: String
}

let durability = [1, 2, 1, 4]
let dogs = [
    Dog(name: "루비독", age: "95년생", jump: "3", weight: "4"),
    Dog(name: "피치독", age: "95년생", jump: "3", weight: "3"),
    Dog(name: "씨-독", age: "72년생", jump: "2", weight: "1"),
    Dog(name: "코볼독", age: "59년생", jump: "1", weight: "1")
]

func solution(_ durability: [Int], _ dogs: [Dog]) -> [String] {
    var answer = [String]()
    var mutableDurability = durability
    for dog in dogs {
        var location = 0
        var fail = false
        if let jump = Int(dog.jump), let weight = Int(dog.weight) {
            while location < mutableDurability.count {
                location += jump
                if location - 1 < mutableDurability.count {
                    mutableDurability[location - 1] -= weight
                    if mutableDurability[location - 1] < 0 {
                        fail = true
                        break
                    }
                } else {
                    break
                }
            }
            if !fail {
                answer.append(dog.name)
            }
        }
    }
    return answer
}

print(solution(durability, dogs))

