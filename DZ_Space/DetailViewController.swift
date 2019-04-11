//
//  DetailViewController.swift
//  DZ_Space
//
//  Created by user on 09/04/2019.
//  Copyright © 2019 Sergey Koshlakov. All rights reserved.
//

import UIKit
import SceneKit

class DetailViewController: UIViewController {

    @IBOutlet weak var scnView: PlanetSCNView!
    @IBOutlet weak var containerStackView: UIStackView!
    @IBOutlet weak var descriptionStackView: UIStackView!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    var planet: Planet!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configure()
    }
    
    private func configure() {
        descriptionStackView.layoutMargins = UIEdgeInsets(top: 0, left: 8, bottom: 0, right: 8)
        descriptionStackView.isLayoutMarginsRelativeArrangement = true
        
        view.backgroundColor = UIColor(red: 0.141, green: 0.141, blue: 0.141, alpha: 1.00)
        navigationItem.title = planet.name
        
        scnView.configure(with: planet.node)
        descriptionLabel.text = planet.description
    }
    
    override var shouldAutorotate: Bool {
        return true
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        if UIDevice.current.userInterfaceIdiom == .phone {
            return .allButUpsideDown
        } else {
            return .all
        }
    }
    
    override func viewDidLayoutSubviews() {
        
       let width = view.bounds.size.width
       let height = view.bounds.size.height
        
        containerStackView.axis = width < height ? .vertical : .horizontal
        
    }

}

