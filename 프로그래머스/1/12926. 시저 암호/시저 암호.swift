

func solution(_ s: String, _ n: Int) -> String {
    var answer: String = ""

    // // 이러면 z 다음에 다시 a가 되지 않지.
    // for char in s {
    //     if char == " " {
    //         answer += " "
    //     } else {
    //         if let ascii = char.asciiValue {                                                                
    //             answer += String(UnicodeScalar(ascii + UInt8(n)))
    //         }
    //     }
    // }
    // return answer
    
        for char in s {
        if char == " " {
            answer += " "
        } else {
            if let ascii = char.asciiValue {
                let shiftedAscii: UInt8                                
                if char.isLowercase {                    
                    shiftedAscii = (ascii - 97 + UInt8(n)) % 26 + 97
                } else if char.isUppercase {                    
                    shiftedAscii = (ascii - 65 + UInt8(n)) % 26 + 65
                } else {                    
                    shiftedAscii = ascii
                }
                answer.append(Character(UnicodeScalar(shiftedAscii)))
            }
        }
    }
    return answer
    
}
