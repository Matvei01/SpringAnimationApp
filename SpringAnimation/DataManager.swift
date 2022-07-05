//
//  DataManager.swift
//  SpringAnimation
//
//  Created by Matvei Khlestov on 04.07.2022.
//

import Spring

class DataManager {
    
    static let shared = DataManager()
    
    let animations = Spring.AnimationPreset.allCases
    
    let curves = Spring.AnimationCurve.allCases
    
    private init() {}
}
