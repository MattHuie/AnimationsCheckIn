//
//  ViewController.swift
//  AnimationsCheckIn
//
//  Created by Matthew Huie on 1/28/19.
//  Copyright © 2019 Matthew Huie. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var duck: UIImageView!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var image: UIButton!
    
    private var animator: UIViewPropertyAnimator!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.label.text = "cat"
        animator = UIViewPropertyAnimator(duration: 1.0, curve: .easeInOut, animations: {
            self.duck.transform = CGAffineTransform(scaleX: 10.0, y: 10.0)
        })
        
    }


    @IBAction func duckSlider(_ sender: UISlider) {
        animator.fractionComplete = CGFloat(sender.value)
        self.view.backgroundColor = UIColor(red: CGFloat(sender.value), green: CGFloat(sender.value), blue: CGFloat(sender.value), alpha: 1)

    }
    
    
    @IBAction func imageButton(_ sender: UIButton) {
        if image.imageView?.image == UIImage(named: "cat") {
            UIView.transition(with: image, duration: 1.0, options: [.transitionFlipFromRight], animations: {
                self.image.setImage(UIImage(named: "dog"), for: .normal)
                self.label.text = "dog"
            })
            
        } else {
            UIView.transition(with: image, duration: 1.0, options: [.transitionFlipFromLeft], animations: {
                self.image.setImage(UIImage(named: "cat"), for: .normal)
                self.label.text = "cat"
            })
            
        }
    }
    
    
}

