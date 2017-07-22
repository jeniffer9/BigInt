//
//  BigUInt Square Root.swift
//  BigInt
//
//  Created by Károly Lőrentey on 2016-01-03.
//  Copyright © 2016-2017 Károly Lőrentey.
//

//MARK: Square Root

/// Returns the integer square root of a big integer; i.e., the largest integer whose square isn't greater than `value`.
///
/// - Returns: floor(sqrt(value))
extension BigUInt {
    public func squareRoot() -> BigUInt {
        // This implementation uses Newton's method.
        guard !self.isZero else { return BigUInt() }
        var x = BigUInt(1) << ((self.bitWidth + 1) / 2)
        while true {
            let y = (x + self / x) >> 1
            if x == y || x == y - 1 { break }
            x = y
        }
        return x
    }
}
