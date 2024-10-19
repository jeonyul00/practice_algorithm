import Foundation

func solution(_ price: Int) -> Int {
    var salePrice: Int = price

    if price >= 500000 {
        salePrice = price * 80 / 100
    } else if price >= 300000 {
        salePrice = price * 90 / 100
    } else if price >= 100000 {
        salePrice = price * 95 / 100
    }
    return salePrice
}