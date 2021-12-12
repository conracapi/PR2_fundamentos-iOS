//
//  ActionFilmsCollectionViewController.swift
//  MoviesApp
//
//  Created by Conrado Capilla García on 10/12/21.
//

import UIKit

class ActionFilmsCollectionViewController: UIViewController {
    
    
    // MARK: - UI elements
    @IBOutlet weak var collectionViewFilms: UICollectionView?
    
    
    // MARK: - Variables
    private var actionFilms: [Film] = []
    
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        // Se indica el dataSource y el delegate del collectionView
        self.collectionViewFilms?.dataSource = self
        self.collectionViewFilms?.delegate = self
        // Se rellena el array actionFilms con todas las películas de acción
        fillArrayActionFilms ()
    }
    
    
    // MARK: - Private functions
    private func fillArrayActionFilms () {
        // Se recorren todas las películas del repositorio
        for film in FilmRepository().films {
            // Se van añadiendo al array actionFilms las películas que tienen
            // marcado su género como películas de acción mediante la var typeFilm
            if film.typeFilm == .action {
                actionFilms.append(film)
            }
        }
    }
    
    
}

// Protocolo con funciones para indicar al collectionView qué datos tiene que mostrar
extension ActionFilmsCollectionViewController: UICollectionViewDataSource {
    
    // Número de secciones del collection
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    // Número de elementos del collection (es el tamaño de actionFilms)
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return actionFilms.count
    }
    
    // Información que se van a mostrar (el array de actionFilms) en las celdas de tipo ActionFilmCollectionViewCell
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        // Se obtiene la celda
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ActionFilmCollectionViewCell", for: indexPath) as? ActionFilmCollectionViewCell
        else {  return UICollectionViewCell()  }
        // Se obtiene la película que corresponde a cada celda mediante el indexPath.row
        let film = actionFilms[indexPath.row]
        // Se pintan los datos en la celda con la película correspondiente
        cell.printDataActionFilm(image: film.imageFilm, name: film.nameFilm, punctuation: film.punctuactionFilm, platform: film.platformFilm?.rawValue)
        return cell
    }
    
}

// Protocolo con funciones para capturar la interacción del usuario con el collection
extension ActionFilmsCollectionViewController: UICollectionViewDelegate {
    
    // Se captura la fila concreta seleccionada por el usuario y se hace la navegación
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let storyBoardDestination = UIStoryboard(name: "DetailFilm", bundle: nil)
        if let viewControllerDestination = storyBoardDestination.instantiateInitialViewController() as? DetailFilmViewController {
            viewControllerDestination.film = actionFilms[indexPath.row]
            self.navigationController?.pushViewController(viewControllerDestination, animated: true)
        }
    }
    
}


extension ActionFilmsCollectionViewController: UICollectionViewDelegateFlowLayout {
    
    // Con esta función se determina la medida de cada celda del collection
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        // Se obtiene el ancho completo del collectionView para determinar las medidas de la celda
        let widthCV: CGFloat = collectionView.frame.width / 2
        // Espacio horizontal entre una celda y otra
        let spacingForCells: CGFloat = 10.0
        // Se determinan las medidas de cada una de las celdas del collectionView
        let widthcCell: CGFloat = widthCV-(spacingForCells/2)
        let heightCell: CGFloat = widthcCell * 1.5
        // Se devuleven las medidas a la celda
        return CGSize(width: widthcCell, height: heightCell)
    }
    
}
