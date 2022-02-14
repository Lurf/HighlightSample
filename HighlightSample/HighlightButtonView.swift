//
//  HighlightButtonView.swift
//  HighlightSample
//
//  Created by Lurf on 2022/02/14.
//

import UIKit

protocol HighlightButtonViewDelegate: AnyObject {
    func didTap()
}

class HighlightButtonView: UIView {
    
    private var isTouched = false
    
    private var delegate: HighlightButtonViewDelegate?
    
    func setup(delegate: HighlightButtonViewDelegate) {
        self.delegate = delegate
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        isTouched = true
        for subview in subviews {
            subview.alpha = 0.6
        }
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        isTouched = false
        for subview in subviews {
            subview.alpha = 1.0
        }
    }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        isTouched = false
        for subview in subviews {
            subview.alpha = 1.0
        }
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        for subview in subviews {
            subview.alpha = 1.0
        }
        
        if isTouched {
            delegate?.didTap()
        }
    }
}
