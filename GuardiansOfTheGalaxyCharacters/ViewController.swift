//
//  ViewController.swift
//  GuardiansOfTheGalaxyCharacters
//
//  Created by Dusan Orescanin on 13/08/2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var gardians = Datas().gardians
    let cellID = "GardianCell"

    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
    }
}


extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func setupTableView() {
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return gardians.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: cellID)
            as? GardianCell {
            cell.setupCell(gardians[indexPath.row])
            return cell
    }
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(gardians[indexPath.row].name)
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 116
    }

}
