//
//  TerrorFilmsTableViewController.swift
//  MoviesApp
//
//  Created by Conrado Capilla García on 9/12/21.
//

import UIKit

class TerrorFilmsTableViewController: UIViewController {

    // MARK: - UI elements
    @IBOutlet weak var tableViewFilms: UITableView?
    
    // MARK: - Variables
    
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        tableViewFilms?.dataSource = self
        tableViewFilms?.delegate = self
    }

}


extension TerrorFilmsTableViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: .cellIdentifier, for: indexPath) as? TerrorFilmTableViewCell
        else {  return UITableViewCell()  }
        
        // cell.mainView?.backgroundColor = .red
        
        return cell
    }
    
}

extension TerrorFilmsTableViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print ("Se ha seleccionado la celda número \(indexPath.row)")
    }
    
}


private extension String {
    static let cellIdentifier: String = "TerrorFilmTableViewCell"
}

