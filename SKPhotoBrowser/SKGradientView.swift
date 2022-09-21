//
//  SKGradientView.swift
//  SKPhotoBrowser-Senne
//
//  Created by Senne Scheepers on 31/08/2022.
//

import Foundation

final class SKGradientView: UIView {
    private var gradientLayerTop: CAGradientLayer!
    private var gradientLayerBottom: CAGradientLayer!

    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }

    private func setup() {
        self.isUserInteractionEnabled = false

        let colors = [UIColor.black.withAlphaComponent(0.5).cgColor, UIColor.clear.cgColor]

        gradientLayerTop = CAGradientLayer()
        gradientLayerTop.colors = colors
        gradientLayerTop.startPoint = CGPoint(x: 0.5, y: 0)
        gradientLayerTop.endPoint = CGPoint(x: 0.5, y: 0.15)
        gradientLayerTop.frame = self.bounds

        gradientLayerBottom = CAGradientLayer()
        gradientLayerBottom.colors = colors
        gradientLayerBottom.startPoint = CGPoint(x: 0.5, y: 1)
        gradientLayerBottom.endPoint = CGPoint(x: 0.5, y: 0.85)
        gradientLayerBottom.frame = self.bounds

        self.layer.insertSublayer(gradientLayerTop, at: 0)
        self.layer.insertSublayer(gradientLayerBottom, at: 1)
    }

    func updateFrame(frame: CGRect) {
        self.frame = frame
        self.gradientLayerTop.frame = frame
        self.gradientLayerBottom.frame = frame
        setNeedsDisplay()
    }
}

