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
    
    var planets = [Planet]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configure()
        
        planets = Planet.getPlanets()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
    }
    
    // MARK: - Methods
    
    private func configureCell(_ cell: PlanetCell, for model: Planet) {
        cell.scnView.configure(with: model.node)
        cell.nameLabel.text = model.name
        cell.moonsLabel.text = "Moons: \(model.moons)"
        cell.temperatureLabel.text = "Temperature: \(model.temperature)"
    }
    
    private func configure() {
        navigationItem.title = "Planets"
        navigationController?.navigationBar.barStyle = .black
        tableView.backgroundColor = UIColor(red: 0.200, green: 0.200, blue: 0.200, alpha: 1.00)
        tableView.separatorColor = UIColor.darkGray
        view.backgroundColor = UIColor(red: 0.141, green: 0.141, blue: 0.141, alpha: 1.00)
    }
    
}

extension ListViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return planets.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "PlanetCell") as! PlanetCell
        
        let planet = planets[indexPath.row]
        
        configureCell(cell, for: planet)
        
        return cell
    }
    
    
}

extension ListViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return CGFloat(120)
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        guard let detailViewController = self.storyboard?.instantiateViewController(withIdentifier: "DetailViewController") as? DetailViewController else { return }
        
        let selectPlanet = planets[indexPath.row]
        
        detailViewController.planet = selectPlanet
        
        navigationController?.pushViewController(detailViewController, animated: true)
    }
    
}
