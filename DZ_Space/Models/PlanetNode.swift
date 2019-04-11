//
//  PlanetNode.swift
//  DZ_Space
//
//  Created by user on 11/04/2019.
//  Copyright © 2019 Sergey Koshlakov. All rights reserved.
//

import SceneKit

class PlanetNode: SCNNode {
    
    let textureName: String
    
    init(textureName: String) {
        self.textureName = textureName
        super.init()
        configure()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        
        let planetGeometry = SCNSphere(radius: 6)
        let material = SCNMaterial()
        material.diffuse.contents = UIImage(named: textureName)
        planetGeometry.materials = [material]
        geometry = planetGeometry
        position = SCNVector3Make(0, 0, 0)
        runAction(SCNAction.repeatForever(SCNAction.rotateBy(x: 0, y: 2, z: 0, duration: 2)))
        
    }
    
}
