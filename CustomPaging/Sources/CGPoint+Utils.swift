//
//  CGPoint+Utils.swift
//  CustomPaging
//
//  Created by Ilya Lobanov on 26/08/2018.
//  Copyright © 2018 Ilya Lobanov. All rights reserved.
//

import CoreGraphics


extension CGPoint {
    
    func distance(to point: CGPoint) -> CGFloat {
        return sqrt(pow((point.x - x), 2) + pow((point.y - y), 2))
    }
    
}
