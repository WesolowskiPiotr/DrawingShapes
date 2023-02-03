//
//  RendererMock.swift
//  DrawShapesTests
//
//  Created by Piotr Wesołowski on 03/02/2023.
//

import UIKit
@testable import DrawShapes

public class RendererMock: RendererService {
    public func draw(rectangle: Rectangle) -> UIImage? {
        return nil
    }
    
    public func draw(square: Square) -> UIImage? {
        return nil
    }
    
    public func draw(circle: Circle) -> UIImage? {
        return nil
    }
}
