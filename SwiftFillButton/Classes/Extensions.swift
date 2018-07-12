//
//  Extensions.swift
//  Pods-SwiftFillButton_Example
//
//  Created by Kemal Hasan Atay on 7/12/18.
//

extension UIFont {
    
    func withTraits(traits: UIFontDescriptorSymbolicTraits...) -> UIFont {
        let descriptor = self.fontDescriptor
            .withSymbolicTraits(UIFontDescriptorSymbolicTraits(traits))
        return UIFont(descriptor: descriptor!, size: 0)
    }
    
    @objc func bold() -> UIFont {
        return withTraits(traits: .traitBold)
    }
    
    @objc func regular() -> UIFont {
        return withTraits()
    }
}
