//
//  Rectangle.swift
//  DrawShapes
//
//  Created by Piotr Wesołowski on 03/02/2023.
//

import CoreGraphics

public class Rectangle: ShapeProtocol {
    var point: CGPoint
    let width: Double
    let height: Double
    
    init(point: CGPoint, width: Double = 250.0, height: Double = 150.0) {
        self.point = point
        self.width = width
        self.height = height
    }
}
