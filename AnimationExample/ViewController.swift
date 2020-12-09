//
//  ViewController.swift
//  AnimationExample
//
//  Created by Айдана on 11/15/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var target_image: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func animatePressed(_ sender: UIButton) {
        switch sender.currentTitle {
        case "Fade out":
            UIView.animate(withDuration: 1) { [self] in
                target_image.alpha = 0
            }
        case "Fade in":
            UIView.animate(withDuration: 1) { [self] in
                target_image.alpha = 1
            }
        case "Move":
            UIView.animate(withDuration: 1) { [self] in
                target_image.center = CGPoint(x: 0, y: 0)
            }
        case "Back":
            UIView.animate(withDuration: 1) { [self] in
                target_image.center = CGPoint(x: self.view.bounds.width/2, y: self.view.bounds.height/2)
            }
        case "Zoom in":
            UIView.animate(withDuration: 1) { [self] in
                target_image.transform = CGAffineTransform(scaleX: 2, y: 2)
            }
        case "Zoom out":
            UIView.animate(withDuration: 1) { [self] in
                target_image.transform = CGAffineTransform(scaleX: 1, y: 1)
            }
        default:
            break
        }
    }
    
}

