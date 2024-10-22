import Foundation

let n = readLine()!.components(separatedBy: [" "]).map { Int($0)! }

if let triangleSize = n.first {
    for i in 1...triangleSize {
        print(String(repeating: "*", count: i))
    }
}