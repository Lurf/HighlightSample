//
//  ViewController.swift
//  HighlightSample
//
//  Created by Lurf on 2022/02/14.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var sampleView: SampleView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        sampleView.delegate = self
        sampleView.setup(delegate: self)
    }
}

extension ViewController: SampleViewDelegate {
    func didTapSampleButton() {
        present(SecondViewController(), animated: true, completion: nil)
    }
}

