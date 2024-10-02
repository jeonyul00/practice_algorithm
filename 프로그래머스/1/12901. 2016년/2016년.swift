import Foundation 

func solution(_ a:Int, _ b:Int) -> String {
    let dateFormatterGet = DateFormatter()
    dateFormatterGet.dateFormat = "yyyy-MM-dd"
    let date = dateFormatterGet.date(from:"2016-\(a)-\(b)")
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat  = "EE"
    return dateFormatter.string(from:date!).uppercased()
}