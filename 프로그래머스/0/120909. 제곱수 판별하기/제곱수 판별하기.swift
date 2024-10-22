import Foundation

func solution(_ n: Int) -> Int {
    let sqrtValue = Int(sqrt(Double(n)))
    return sqrtValue * sqrtValue == n ? 1 : 2
}
