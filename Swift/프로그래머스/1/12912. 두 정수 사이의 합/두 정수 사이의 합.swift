func solution(_ a:Int, _ b:Int) -> Int64 { var answer:Int64 = 0; let start = min(a, b); let end = max(a, b); for i in start...end { answer += Int64(i); }; return answer; }