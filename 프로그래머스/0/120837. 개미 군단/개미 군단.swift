import Foundation

//  장군개미는 5의 공격력을, 병정개미는 3의 공격력을 일개미는 1의 공격력을 가지고 있습니다. 
func solution(_ hp:Int) -> Int {
    var rest = hp
    var count = 0    
    count += rest / 5
    rest %= 5
    count += rest / 3
    rest %= 3
    count += rest    
    return count
}