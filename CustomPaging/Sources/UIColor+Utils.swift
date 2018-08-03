//
//  UIColor+Utils.swift
//  CustomPaging
//
//  Created by Ilya Lobanov on 04/08/2018.
//  Copyright © 2018 Ilya Lobanov. All rights reserved.
//

import UIKit

extension UIColor {

    convenience init(rgb value: UInt) {
        self.init(byteRed: UInt8((value >> 16) & 0xff),
            green: UInt8((value >> 8) & 0xff),
            blue: UInt8(value & 0xff),
            alpha: 0xff)
    }
    
    convenience init(byteRed red: UInt8, green: UInt8, blue: UInt8, alpha: UInt8 = 0xff) {
        self.init(red: CGFloat(red) / 255,
            green: CGFloat(green) / 255,
            blue: CGFloat(blue) / 255,
            alpha: CGFloat(alpha) / 255)
    }
    
}
