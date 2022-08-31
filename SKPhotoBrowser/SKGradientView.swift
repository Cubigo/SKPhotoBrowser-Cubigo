//
//  SKGradientView.swift
//  SKPhotoBrowser-Senne
//
//  Created by Senne Scheepers on 31/08/2022.
//

import Foundation

final class SKGradientView: UIView {
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

        let gradientLayerTop = CAGradientLayer()
        gradientLayerTop.colors = colors
        gradientLayerTop.startPoint = CGPoint(x: 0.5, y: 0)
        gradientLayerTop.endPoint = CGPoint(x: 0.5, y: 0.15)
        gradientLayerTop.frame = self.bounds

        let gradientLayerBottom = CAGradientLayer()
        gradientLayerBottom.colors = colors
        gradientLayerBottom.startPoint = CGPoint(x: 0.5, y: 1)
        gradientLayerBottom.endPoint = CGPoint(x: 0.5, y: 0.85)
        gradientLayerBottom.frame = self.bounds

        self.layer.insertSublayer(gradientLayerTop, at: 0)
        self.layer.insertSublayer(gradientLayerBottom, at: 1)
    }
}

