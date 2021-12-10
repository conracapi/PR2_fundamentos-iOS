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
    
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.collectionViewFilms?.dataSource = self
        self.collectionViewFilms?.delegate = self
    }
    
}

extension ActionFilmsCollectionViewController: UICollectionViewDataSource {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ActionFilmCollectionViewCell", for: indexPath) as? ActionFilmCollectionViewCell
        else {  return UICollectionViewCell()  }
        return cell
    }
    
}

extension ActionFilmsCollectionViewController: UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("Se ha seleccionado el item \(indexPath.row)")
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
        
        // Se le asignan las medidas a la celda
        return CGSize(width: widthcCell, height: heightCell)
    }
    
}
