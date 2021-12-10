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
        
        // Personalización de la UIView de background
        self.mainView?.layer.cornerRadius = 10.0
        // Personalización de la imagen de la película
        self.imageFilm?.layer.cornerRadius = 9.0
        
        
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
    }
    
    
}
