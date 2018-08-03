//
//  Projection.swift
//  CustomPaging
//
//  Created by Ilya Lobanov on 25/08/2018.
//  Copyright © 2018 Ilya Lobanov. All rights reserved.
//

import CoreGraphics

extension FloatingPoint {

    func project(initialVelocity: Self, decelerationRate: Self) -> Self {
        if decelerationRate >= 1 {
            assert(false)
            return self
        }
        
        return self + initialVelocity * decelerationRate / (1 - decelerationRate)
    }

}

extension CGPoint {
    
    func project(initialVelocity: CGPoint, decelerationRate: CGPoint) -> CGPoint {
        let xProjection = x.project(initialVelocity: initialVelocity.x, decelerationRate: decelerationRate.x)
        let yProjection = y.project(initialVelocity: initialVelocity.y, decelerationRate: decelerationRate.y)
        return CGPoint(x: xProjection, y: yProjection)
    }
    
    func project(initialVelocity: CGPoint, decelerationRate: CGFloat) -> CGPoint {
        return project(initialVelocity: initialVelocity, decelerationRate: CGPoint(x: decelerationRate, y: decelerationRate))
    }
    
}
