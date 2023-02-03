//
//  ViewController.swift
//  DrawShapes
//
//  Created by Piotr Wesołowski on 02/02/2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    
    private let renderer: RendererService = RendererAdapter(renderer: Renderer())
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(didTapView(_:)))
        view.addGestureRecognizer(tapGestureRecognizer)
    }
    
    // MARK: - Selector
    
    @objc
    private func didTapView(_ sender: UITapGestureRecognizer) {
        guard let selectedShape = Shape.allCases.randomElement() else { return }
        randomShape(shape: selectedShape, point: sender.location(in: view))
    }
    
    // MARK: - Helper Methods
    
    private func randomShape(shape: Shape, point: CGPoint) {
        switch shape {
        case .circle:
            imageView.image = renderer.draw(circle: Circle(point: point))
        case .square:
            imageView.image = renderer.draw(square: Square(point: point))
        case .rectangle:
            imageView.image = renderer.draw(rectangle: Rectangle(point: point))
        }
    }
}
