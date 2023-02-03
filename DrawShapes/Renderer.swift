//
//  Renderer.swift
//  DrawShapes
//
//  Created by Piotr Wesołowski on 03/02/2023.
//

import UIKit

protocol Renderable {
    func draw(rectangle: Rectangle) -> UIImage?
    func draw(square: Square) -> UIImage?
    func draw(circle: Circle) -> UIImage?
}

class Renderer: Renderable {
    func draw(rectangle: Rectangle) -> UIImage? {
        let rectangle = CGRect(
            x: rectangle.point.x,
            y: rectangle.point.y,
            width: rectangle.width,
            height: rectangle.height)
        
        guard let img = drawWithRect(rectangle, andShape: .rectangle) else { return nil }
        return img
    }
    
    func draw(square: Square) -> UIImage? {
        let square = CGRect(
            x: square.point.x,
            y: square.point.y,
            width: square.width,
            height: square.width)
        
        guard let img = drawWithRect(square, andShape: .square) else { return nil }
        return img
    }
    
    func draw(circle: Circle) -> UIImage? {
        let circle = CGRect(
            x: circle.point.x,
            y: circle.point.y,
            width: circle.radius,
            height: circle.radius)
        
        guard let img = drawWithRect(circle, andShape: .circle) else { return nil }
        return img
    }
    
    private func drawWithRect(_ rect: CGRect, andShape: Shape) -> UIImage? {
        let renderer = UIGraphicsImageRenderer(
            size: CGSize(width: UIScreen.main.bounds.width,
                         height: UIScreen.main.bounds.height))
        
        let shapeToDraw = andShape
        
        return renderer.image { ctx in
            let shape = CGRect(
                x: rect.minX,
                y: rect.minY,
                width: rect.width,
                height: rect.height)
            
            ctx.cgContext.setFillColor(UIColor.red.cgColor)
            ctx.cgContext.setLineWidth(10)
            
            switch shapeToDraw {
            case .rectangle, .square:
                ctx.cgContext.addRect(shape)
            case .circle:
                ctx.cgContext.addEllipse(in: shape)
            }
            
            ctx.cgContext.drawPath(using: .fillStroke)
        }
    }
}
