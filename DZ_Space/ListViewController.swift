//
//  ListViewController.swift
//  DZ_Space
//
//  Created by user on 10/04/2019.
//  Copyright © 2019 Sergey Koshlakov. All rights reserved.
//

import UIKit

class ListViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configure()
    }
    
    // MARK: - Methods
    
    func configureCell(_ cell: PlanetCell) {
        let view = UIView()
        view.backgroundColor = UIColor(red: 0.969, green: 0.722, blue: 0.204, alpha: 0.1)
        cell.selectedBackgroundView = view
        
        cell.scnView.configureWith(textureName: "earth.jpg")
    }
    
    func configure() {
        navigationItem.title = "Planets"
        navigationController?.navigationBar.barStyle = .black
        tableView.backgroundColor = UIColor(red: 0.200, green: 0.200, blue: 0.200, alpha: 1.00)
        tableView.separatorColor = UIColor.darkGray
        view.backgroundColor = UIColor(red: 0.141, green: 0.141, blue: 0.141, alpha: 1.00)
    }
    
}

extension ListViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "CosmicBodyCell") as! PlanetCell
        
        configureCell(cell)
        
        return cell
    }
    
    
}

extension ListViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return CGFloat(120)
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        guard let detailViewController = self.storyboard?.instantiateViewController(withIdentifier: "DetailViewController") else { return }
        
        navigationController?.pushViewController(detailViewController, animated: true)
    }
    
}
