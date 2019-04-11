//
//  PlanetSCNView.swift
//  DZ_Space
//
//  Created by user on 10/04/2019.
//  Copyright © 2019 Sergey Koshlakov. All rights reserved.
//

import UIKit
import SceneKit

class PlanetSCNView: SCNView {
   
    func configure(with node: PlanetNode) {
        
        let scene = SCNScene()
        
        // set the scene to the view
        self.scene = scene
        
        // create and add a camera to the scene
        let cameraNode = SCNNode()
        cameraNode.camera = SCNCamera()
        scene.rootNode.addChildNode(cameraNode)
        
        // place the camera
        cameraNode.position = SCNVector3(x: 0, y: 0, z: 15)
        
        scene.rootNode.addChildNode(node)
        
        // allows the user to manipulate the camera
        self.allowsCameraControl = true
        
        self.autoenablesDefaultLighting = true
        
        // configure the view
        self.backgroundColor = UIColor.black
        
    }

}
