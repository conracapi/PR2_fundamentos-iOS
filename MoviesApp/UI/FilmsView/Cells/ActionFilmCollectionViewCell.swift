//
//  ActionFilmCollectionViewCell.swift
//  MoviesApp
//
//  Created by Conrado Capilla García on 10/12/21.
//

import UIKit

class ActionFilmCollectionViewCell: UICollectionViewCell {
    
    
    // MARK: - UI elements
    @IBOutlet weak var mainView: UIView?
    @IBOutlet weak var imageFilm: UIImageView?
    @IBOutlet weak var nameFilm: UILabel?
    @IBOutlet weak var punctuacionFilm: UILabel?
    @IBOutlet weak var platformFilm: UIImageView?
    
    
    // MARK: - Lifecycle
    override func awakeFromNib() {
        super.awakeFromNib()
        // Personalización de la celda
        self.layer.cornerRadius = 10.0
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        // Se inicializan a null los valores de cada celda que vaya a ser reutilizada con el fin
        // de evitar que se produzca algún error a la hora de hacer el repintado de los elementos
        self.imageFilm?.image = nil
        self.nameFilm?.text = nil
        self.punctuacionFilm?.text = nil
        self.platformFilm?.image = nil
    }
    
    
    // MARK: - Functions
    func printDataActionFilm (image: String?, name: String?, punctuation: Float?, platform: String?) {
        self.imageFilm?.image = UIImage(named: image ?? "")
        self.nameFilm?.text = name
        self.punctuacionFilm?.text = String(punctuation ?? 0) + "/10"
        self.platformFilm?.image = UIImage(named: platform ?? "")
        
    }
    
}

