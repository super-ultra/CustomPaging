//
//  Clamp.swift
//  CustomPaging
//
//  Created by Ilya Lobanov on 27/08/2018.
//  Copyright © 2018 Ilya Lobanov. All rights reserved.
//

import Foundation

extension Comparable {

    func clamped(to limits: ClosedRange<Self>) -> Self {
        return min(max(self, limits.lowerBound), limits.upperBound)
    }
    
}
