import UIKit

func solution(for waitingPeople: Int) -> String {
    let dailyCapacity = 1380
    let hourlyCapacity = 115
    let months = [1024, 512, 256, 128, 64, 32, 16, 8, 4, 2]
    var daysNeeded = waitingPeople / dailyCapacity
    let remainingPeople = waitingPeople % dailyCapacity
    var hour = 9 + remainingPeople / hourlyCapacity
    let minutes = (remainingPeople % hourlyCapacity) / 15 * 10
    
    var year = 2020
    var month = 1
    var day = 1
    
    for daysInMonth in months {
        if daysNeeded < daysInMonth {
            day += daysNeeded
            break
        }
        daysNeeded -= daysInMonth
        month += 1
        if month > 10 {
            year += 1
            month = 1
        }
    }
        
    let delayedMinutes = minutes + minutes
    return "\(year)년 \(month)월 \(day)일 \(hour)시 \(delayedMinutes)분 출발"
}

print(solution(for: 14000605))

