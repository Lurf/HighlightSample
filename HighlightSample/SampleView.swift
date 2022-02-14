//
//  SampleView.swift
//  HighlightSample
//
//  Created by Lurf on 2022/02/14.
//

import UIKit

protocol SampleViewDelegate: AnyObject {
    func didTapSampleButton()
}

class SampleView: HighlightButtonView {
    var delegate: SampleViewDelegate?
    
    func setup(delegate: SampleViewDelegate) {
        self.delegate = delegate
        super.setup(delegate: self)
    }
}

extension SampleView: HighlightButtonViewDelegate {
    func didTap() {
        delegate?.didTapSampleButton()
    }
}
