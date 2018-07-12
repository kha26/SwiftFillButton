//
//  FillButton.swift
//  Pods-SwiftFillButton_Example
//
//  Created by Kemal Hasan Atay on 7/12/18.
//

import UIKit

@IBDesignable public class FillButton: UIButton {
    
    @IBInspectable public var highlightColor: UIColor = .black {
        didSet {
            layer.borderColor = highlightColor.cgColor
        }
    }
    @IBInspectable public var doesZoom: Bool = false
    @IBInspectable public var isHighlightBold: Bool = false
    @IBInspectable public var unhighlightColor: UIColor = .white
    @IBInspectable public var zoomScale: CGFloat = 0.9
    
    // MARK: - Initializers
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setup()
    }
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.setup()
    }
    override public func prepareForInterfaceBuilder() {
        self.setup()
    }
    
    // MARK: - UI Functions
    override public func layoutSubviews() {
        super.layoutSubviews()
        
        if isHighlighted {
            backgroundColor = highlightColor
            setTitleColor(unhighlightColor, for: .normal)
            if let font = titleLabel?.font,
                isHighlightBold {
                titleLabel?.font = font.bold()
            }
            if doesZoom {
                self.transform = CGAffineTransform(scaleX: zoomScale, y: zoomScale)
            }
        } else {
            backgroundColor = unhighlightColor
            setTitleColor(highlightColor, for: .normal)
            if let font = titleLabel?.font,
                isHighlightBold {
                titleLabel?.font = font.regular()
            }
            if doesZoom {
                self.transform = CGAffineTransform.identity
            }
        }
    }
    
    fileprivate func setup() {
        layer.borderColor = highlightColor.cgColor
        layer.borderWidth = 1
        layer.cornerRadius = 10
        layer.masksToBounds = true
    }
    
}
