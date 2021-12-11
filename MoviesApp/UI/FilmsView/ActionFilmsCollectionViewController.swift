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
        self.collectionViewFilms?.dataSource = self
        self.collectionViewFilms?.delegate = self
        //
        let films = FilmRepository().films
        for film in films {
            if film.typeFilm == .action {
                actionFilms.append(film)
            }
        }
    }
    
}


extension ActionFilmsCollectionViewController: UICollectionViewDataSource {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return actionFilms.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ActionFilmCollectionViewCell", for: indexPath) as? ActionFilmCollectionViewCell
        else {  return UICollectionViewCell()  }
        let film = actionFilms[indexPath.row]
        cell.printDataActionFilm(image: film.imageFilm, name: film.nameFilm, punctuation: film.punctuactionFilm, platform: film.platformFilm?.rawValue)
        return cell
    }
    
}


extension ActionFilmsCollectionViewController: UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let storyBoardDestination = UIStoryboard(name: "DetailFilm", bundle: nil)
        if let viewControllerDestination = storyBoardDestination.instantiateInitialViewController() as? DetailFilmViewController {
            viewControllerDestination.film = actionFilms[indexPath.row]
            self.navigationController?.pushViewController(viewControllerDestination, animated: true)
        }
    }
    
}


extension ActionFilmsCollectionViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        // Se obtiene el ancho completo del viewController para determinar las medidas de la celda
        let widthCV: CGFloat = collectionView.frame.width / 2
        // Este es el espacio horizontal entre una celda y otra
        let spacingForCells: CGFloat = 10.0
        // Se determinan las medidas de cada una de las celdas del collectionView
        let widthcCell: CGFloat = widthCV-(spacingForCells/2)
        let heightCell: CGFloat = widthcCell * 1.5
        // Se devuleven las medidas a la celda
        return CGSize(width: widthcCell, height: heightCell)
    }
    
}
