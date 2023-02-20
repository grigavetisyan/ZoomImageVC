//
//  ViewController.swift
//  ZoomImageVC
//
//  Created by Grigor Avetisyan on 08.01.23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var scrolView: UIScrollView!
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpScrollView()
    }
    
    func setUpScrollView() {
        scrolView.delegate = self
    }
}

extension ViewController: UIScrollViewDelegate {
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return imageView
    }
}
