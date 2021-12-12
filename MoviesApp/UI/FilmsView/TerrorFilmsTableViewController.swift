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
        // Se indica el dataSource y el delegate del tableView
        tableViewFilms?.dataSource = self
        tableViewFilms?.delegate = self
        // Se rellena el array terrorFilms con todas las películas de terror
        fillArrayTerrorFilms ()
    }
    
    
    // MARK: - Private functions
    private func fillArrayTerrorFilms () {
        // Se recorren todas las películas del repositorio
        for film in FilmRepository().films {
            // Se van añadiendo al array terrorFilms las películas que tienen
            // marcado su género como películas de terror mediante la var typeFilm
            if film.typeFilm == .terror {
                terrorFilms.append(film)
            }
        }
    }
    
    
}

// Protocolo con funciones para indicar al tableView qué datos tiene que mostrar
extension TerrorFilmsTableViewController: UITableViewDataSource {
    
    // Número de secciones de la tabla
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    // Número de filas de la tabla (es el tamaño de terrorFilms)
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return terrorFilms.count
    }
    
    // Información que se van a mostrar (el array de terrorFilms) en las celdas de tipo TerrorFilmTableViewCell
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Se obtiene la celda
        guard let cell = tableView.dequeueReusableCell(withIdentifier: .cellIdentifier, for: indexPath) as? TerrorFilmTableViewCell
        else {  return UITableViewCell()  }
        // Se obtiene la película que corresponde a cada celda mediante el indexPath.row
        let filmTerror = terrorFilms[indexPath.row]
        // Se pintan los datos en la celda con la película correspondiente
        cell.printDataTerrorFilm(image: filmTerror.imageFilm, name: filmTerror.nameFilm, durationHours: filmTerror.hoursDurationFilm, durationMins: filmTerror.minutesDurationFilm, punctuation: filmTerror.punctuactionFilm, platform: filmTerror.platformFilm?.rawValue)
        return cell
    }
    
}

// Protocolo con funciones para capturar la interacción del usuario con la tabla
extension TerrorFilmsTableViewController: UITableViewDelegate {
    
    // Se captura la fila concreta seleccionada por el usuario y se hace la navegación
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let storyBoardDestination = UIStoryboard(name: .storyboardDetail, bundle: nil)
        if let viewControllerDestination = storyBoardDestination.instantiateInitialViewController() as? DetailFilmViewController {
            viewControllerDestination.film = terrorFilms[indexPath.row]
            self.navigationController?.pushViewController(viewControllerDestination, animated: true)
        }
    }
    
}


private extension String {
    static let storyboardDetail: String = "DetailFilm"
    static let cellIdentifier: String = "TerrorFilmTableViewCell"
}


