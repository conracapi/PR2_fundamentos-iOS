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
    private var terrorFilms: [Film] = []
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        //
        tableViewFilms?.dataSource = self
        tableViewFilms?.delegate = self
        //
        
        
        
        
        

        let films = FilmRepository().films
        for film in films {
            if film.typeFilm == .terror {
                print("Esta película es de terror y su nombre es: \(film.nameFilm ?? "NOMBRE_PELICULA")")
                terrorFilms.append(film)
            }
        }
        // terrorFilms = FilmRepository().films
    }

}


extension TerrorFilmsTableViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return terrorFilms.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // Se obtiene la celda
        guard let cell = tableView.dequeueReusableCell(withIdentifier: .cellIdentifier, for: indexPath) as? TerrorFilmTableViewCell
        else {  return UITableViewCell()  }
        // Se obtienen la película que corresponde a cada celda
        let filmTerror = terrorFilms[indexPath.row]
        // Se pintan los datos de la celda
        cell.printDataTerrorFilm(image: filmTerror.imageFilm, name: filmTerror.nameFilm, durationHours: filmTerror.hoursDurationFilm, durationMins: filmTerror.minutesDurationFilm, punctuation: filmTerror.punctuactionFilm, platform: filmTerror.platformFilm?.rawValue)
        
        return cell
        
    }
    
}

extension TerrorFilmsTableViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print ("Se ha seleccionado la celda número \(indexPath.row)")
        let storyBoardDestination = UIStoryboard(name: "DetailFilm", bundle: nil)
        if let viewControllerDestination = storyBoardDestination.instantiateInitialViewController() as? DetailFilmViewController {
            viewControllerDestination.film = terrorFilms[indexPath.row]
            self.navigationController?.pushViewController(viewControllerDestination, animated: true)
        }
    }
    
}


private extension String {
    static let cellIdentifier: String = "TerrorFilmTableViewCell"
}


