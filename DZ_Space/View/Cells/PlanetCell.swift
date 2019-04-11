//
//  PlanetCell.swift
//  DZ_Space
//
//  Created by user on 10/04/2019.
//  Copyright © 2019 Sergey Koshlakov. All rights reserved.
//

import UIKit

class PlanetCell: UITableViewCell {

    @IBOutlet weak var scnView: PlanetSCNView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var moonsLabel: UILabel!
    @IBOutlet weak var temperatureLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        configure()
        
    }
    
    private func configure() {
        let view = UIView()
        view.backgroundColor = UIColor(red: 0.969, green: 0.722, blue: 0.204, alpha: 0.1)
        self.selectedBackgroundView = view
        backgroundColor = UIColor(red: 0.200, green: 0.200, blue: 0.200, alpha: 1.00)
    }

}
