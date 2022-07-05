//
//  ViewController.swift
//  SpringAnimation
//
//  Created by Matvei Khlestov on 04.07.2022.
//

import Spring

class ViewController: UIViewController {
    
    @IBOutlet weak var animationSpringView: SpringView!
    @IBOutlet weak var animationLabel: UILabel!
    
    private var animation = Animation.getRandomAnimation()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        animationLabel.text = animation.description
    }

    @IBAction func runAnimationButton(_ sender: UIButton) {
        animationLabel.text = animation.description
        
        animationSpringView.animation = animation.name
        animationSpringView.curve = animation.curve
        animationSpringView.force = CGFloat(animation.force)
        animationSpringView.duration = CGFloat(animation.duration)
        animationSpringView.delay = CGFloat(animation.delay)
        animationSpringView.animate()
        
        animation = Animation.getRandomAnimation()
        sender.setTitle("Run \(animation.name)", for: .normal)
    }
}

