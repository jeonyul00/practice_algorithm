import Foundation


/*
        a개를 줘야 b개를 받음, 나는 일단 현재는 n개가 있음
*/
func solution(_ a:Int, _ b:Int, _ n:Int) -> Int {        
    var currentBottles = n
    var totalReceived = 0 
        
    while currentBottles >= a {
        let newBottles = (currentBottles / a) * b
        let leftoverBottles = currentBottles % a
        
        totalReceived += newBottles
        currentBottles = newBottles + leftoverBottles
    }
    
    return totalReceived

}