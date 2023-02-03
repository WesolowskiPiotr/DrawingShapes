//
//  RendererAdapter.swift
//  DrawShapes
//
//  Created by Piotr Wesołowski on 03/02/2023.
//

import UIKit

public protocol RendererService {
    func draw(rectangle: Rectangle) -> UIImage?
    func draw(square: Square) -> UIImage?
    func draw(circle: Circle) -> UIImage?
}

public class RendererAdapter: RendererService {
    private var renderer: Renderable
    
    init(renderer: Renderable) {
        self.renderer = renderer
    }
    
    public func draw(rectangle: Rectangle) -> UIImage? {
        return renderer.draw(rectangle: rectangle)
    }
    
    public func draw(square: Square) -> UIImage? {
        return renderer.draw(square: square)
    }
    
    public func draw(circle: Circle) -> UIImage? {
        return renderer.draw(circle: circle)
    }
}


