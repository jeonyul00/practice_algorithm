func solution(_ n:Int, _ arr1:[Int], _ arr2:[Int]) -> [String] {    
    var answer: [String] = []
    
    for i in 0..<n {
        let binaryString = String(arr1[i] | arr2[i], radix: 2)
        let paddedBinaryString = String(repeating: "0", count: n - binaryString.count) + binaryString
        let mapLine = paddedBinaryString.map { $0 == "1" ? "#" : " " }.joined()
        answer.append(mapLine)
    }
    return answer
}