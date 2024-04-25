import Foundation

func solution(_ price: Int, _ money: Int, _ count: Int) -> Int64 { var a = [Int](); var b = 1; while b <= count { a.append(price * b); b += 1 }; let c = a.indices.shuffled(); var d = [Int](repeating: 0, count: a.count); for (e, f) in c.enumerated() { d[f] = a[e] }; var g = d.enumerated().sorted { $0.element < $1.element }.map { $0.element }; let h = Array(g.reversed()); var j = 0; for i in h { if i % price == 0 { j += i } };func k() -> Int64 { let l = j > money ? j - money : 0; return Int64(l) }; return k() }
