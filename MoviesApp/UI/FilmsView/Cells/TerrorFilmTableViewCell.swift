//
//  TerrorFilmTableViewCell.swift
//  MoviesApp
//
//  Created by Conrado Capilla García on 9/12/21.
//

import UIKit

class TerrorFilmTableViewCell: UITableViewCell {
    
    
    // MARK: - UI elements
    @IBOutlet weak var mainView: UIView?
    @IBOutlet weak var imageFilm: UIImageView?
    @IBOutlet weak var nameFilm: UILabel?
    @IBOutlet weak var durationFilm: UILabel?
    @IBOutlet weak var punctuationFilm: UILabel?
    @IBOutlet weak var platformImage: UIImageView?
    
    
    // MARK: - Lifecycle
    override func awakeFromNib() {
        super.awakeFromNib()
        // Personalización de los elementos de la celda
        self.mainView?.layer.cornerRadius = 10.0
        self.imageFilm?.layer.cornerRadius = 9.0
        self.punctuationFilm?.layer.borderWidth = 1.0
        self.punctuationFilm?.layer.borderColor = UIColor.systemGray.cgColor
        self.punctuationFilm?.layer.cornerRadius = 8.0
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        // Se inicializan a null los valores de cada celda que vaya a ser reutilizada con el fin
        // de evitar que se produzca algún error a la hora de hacer el repintado de los elementos
        self.imageFilm?.image = nil
        self.nameFilm?.text = nil
        self.durationFilm?.text = nil
        self.punctuationFilm?.text = nil
        self.platformImage?.image = nil
    }
    
    
    // MARK: - Functions
    func printDataTerrorFilm (image: String?, name: String?, durationHours: UInt?, durationMins: UInt?, punctuation: Float?, platform: String?) {
        self.imageFilm?.image = UIImage(named: image ?? "")
        self.nameFilm?.text = name
        self.durationFilm?.text = String(durationHours ?? 0) + "h " + String(durationMins ?? 0) + "min"
        self.punctuationFilm?.text = " " + String(punctuation ?? 0) + "/10 "
        self.platformImage?.image = UIImage(named: platform ?? "")
    }
    
    
}
