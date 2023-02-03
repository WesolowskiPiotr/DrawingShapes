//
//  Circle.swift
//  DrawShapes
//
//  Created by Piotr Wesołowski on 03/02/2023.
//

import CoreGraphics

public class Circle: ShapeProtocol {
    var point: CGPoint
    let radius: Double
    
    init(point: CGPoint, radius: Double = 150.0) {
        self.point = point
        self.radius = radius
    }
}
