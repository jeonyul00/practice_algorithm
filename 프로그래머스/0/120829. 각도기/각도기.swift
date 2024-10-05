import Foundation

enum AngleType: Int {
    case acuteAngle = 1 
    case rightAngle = 2 
    case obtuseAngle = 3
    case reflexAngle = 4
}

func solution(_ angle: Int) -> Int {
    switch angle {
    case 1..<90:
        return AngleType.acuteAngle.rawValue
    case 90:
        return AngleType.rightAngle.rawValue
    case 91..<180:
        return AngleType.obtuseAngle.rawValue
    case 180...:
        return AngleType.reflexAngle.rawValue
    default:
        return 0
    }
}
