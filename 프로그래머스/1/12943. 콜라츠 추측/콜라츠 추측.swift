func solution(_ num: Int) -> Int {
    if num == 1 { return 0 }
    var answer: Int = 0
    var number: Int = num

    while number != 1 {
        if answer >= 500 { return -1 }

        if number % 2 == 0 {
            number /= 2
        } else {
            number = number * 3 + 1
        }
        answer += 1
    }

    return answer
}
