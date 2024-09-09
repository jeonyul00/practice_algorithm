func solution(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
    let m = arr1.count
    let n = arr2.count
    let p = arr2[0].count

    var result = Array(repeating: Array(repeating: 0, count: p), count: m)

    for i in 0..<m {
        for j in 0..<p {
            for k in 0..<n {
                result[i][j] += arr1[i][k] * arr2[k][j]
            }
        }
    }

    return result
}
