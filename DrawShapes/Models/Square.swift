//
//  Square.swift
//  DrawShapes
//
//  Created by Piotr Wesołowski on 03/02/2023.
//

import CoreGraphics

public class Square: ShapeProtocol {
    var point: CGPoint
    let width: Double
    
    init(point: CGPoint, width: Double = 150.0) {
        self.point = point
        self.width = width
    }
}
