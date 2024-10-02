func solution(_ a:Int, _ b:Int) -> String {
    let lastDays:[Int] = [31,29,31,30,31,30,31,31,30,31,30,31]
    let days: [String] = ["SUN","MON","TUE","WED","THU","FRI","SAT"]
    
    var total = b - 1
    
    for i in 0..<a - 1 {
        total += lastDays[i]
    }
    
    let dayIndex = (total + 5) % 7

    return days[dayIndex]
}