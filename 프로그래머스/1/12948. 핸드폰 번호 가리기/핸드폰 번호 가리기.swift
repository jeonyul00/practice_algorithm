func solution(_ phone_number:String) -> String {
    let length = phone_number.count
    let startRange = phone_number.index(phone_number.endIndex, offsetBy: -4)
    let hiddenPart = String(repeating: "*", count: length - 4)
    let visiblePart = phone_number[startRange...]
    return hiddenPart + visiblePart
}