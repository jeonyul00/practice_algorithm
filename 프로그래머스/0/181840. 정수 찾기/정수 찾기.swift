import Foundation

func solution(_ num_list:[Int], _ n:Int) -> Int {                
    return num_list.filter { num in num == n }.isEmpty ? 0 : 1
}