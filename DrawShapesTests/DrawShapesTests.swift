//
//  DrawShapesTests.swift
//  DrawShapesTests
//
//  Created by Piotr Wesołowski on 03/02/2023.
//

import XCTest
@testable import DrawShapes

final class DrawShapesTests: XCTestCase {
    var renderer = RendererMock()

    func testRendererDrawRectangle() throws {
        // given
        let rect = CGRect(x: 0, y: 0, width: 100, height: 100)
        let square = Square(point: CGPoint(x: rect.minX, y: rect.minY), width: rect.width)
        var drawedSquare: UIImage?
        
        // when
        drawedSquare = renderer.draw(square: square)
        
        // then
        XCTAssertEqual(rect.size, drawedSquare?.size)
    }
}
