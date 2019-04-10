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
   
    func configureWith(textureName: String) {
        //view.backgroundColor = UIColor.darkGray
        // create a new scene
        //let scene = SCNScene(named: "art.scnassets/sphere.scn")!
        let scene = SCNScene()
        
        // create and add a camera to the scene
        let cameraNode = SCNNode()
        cameraNode.camera = SCNCamera()
        scene.rootNode.addChildNode(cameraNode)
        
        // place the camera
        cameraNode.position = SCNVector3(x: 0, y: 0, z: 15)
        
        // create and add a light to the scene
        //        let lightNode = SCNNode()
        //        lightNode.light = SCNLight()
        //        lightNode.light!.type = .omni
        //        lightNode.position = SCNVector3(x: 0, y: 10, z: 10)
        //        scene.rootNode.addChildNode(lightNode)
        
        // create and add an ambient light to the scene
        //        let ambientLightNode = SCNNode()
        //        ambientLightNode.light = SCNLight()
        //        ambientLightNode.light!.type = .ambient
        //        ambientLightNode.light!.color = UIColor.darkGray
        //        scene.rootNode.addChildNode(ambientLightNode)
        
        // retrieve the ship node
        //let ship = scene.rootNode.childNode(withName: "sphere", recursively: true)!
        
        let node = SCNNode(geometry: SCNSphere(radius: 6))
        node.geometry?.firstMaterial?.diffuse.contents = UIImage(named: textureName)
        //node.scale = SCNVector3(2, 2, 2)
        //node.pivot = SCNMatrix4MakeTranslation(0,0,0)
        node.position = SCNVector3Make(0, 0, 0)
        scene.rootNode.addChildNode(node)
        // animate the 3d object
        node.runAction(SCNAction.repeatForever(SCNAction.rotateBy(x: 0, y: 2, z: 0, duration: 2)))
        
        // retrieve the SCNView
        //let scnView = self.view as! SCNView
        
        // set the scene to the view
        self.scene = scene
        
        // allows the user to manipulate the camera
        self.allowsCameraControl = true
        
        self.autoenablesDefaultLighting = true
        
        // show statistics such as fps and timing information
        //scnView.showsStatistics = true
        
        // configure the view
        self.backgroundColor = UIColor.black
        
        //scnView.scene?.background.contents = UIImage(named: "earth.jpg")
    }

}
