//
//  Animation.swift
//  SpringAnimation
//
//  Created by Matvei Khlestov on 04.07.2022.
//


struct Animation {
    let name: String
    let curve: String
    let force: Float
    let duration: Float
    let delay: Float
    
    var description: String {
        
    """
    preset: \(name)
    curve: \(curve)
    force: \(String(format: "%.02f", force))
    duration: \(String(format: "%.02f", duration))
    delay: \(String(format: "%.02f", delay))
    """
    }
    
    static func getRandomAnimation() -> Animation {
        Animation(
            name: DataManager.shared.animations.randomElement()?.rawValue ?? "slideLeft",
            curve: DataManager.shared.curves.randomElement()?.rawValue ?? "easeIn",
            force: Float.random(in: 1...2),
            duration: Float.random(in: 1...2),
            delay: 0.3
        )
    }
}


