//
//  DetailFilmViewController.swift
//  MoviesApp
//
//  Created by Conrado Capilla García on 11/12/21.
//

import UIKit

class DetailFilmViewController: UIViewController {
    
    
    // MARK: - UI elements
    @IBOutlet weak var nameFilm: UILabel?
    @IBOutlet weak var summaryFilm: UIScrollView?
    @IBOutlet weak var resumeFilm: UILabel?
    @IBOutlet weak var actorsFilm: UILabel?
    @IBOutlet weak var durationFilm: UILabel?
    @IBOutlet weak var platformFilm: UIImageView?
    @IBOutlet weak var punctuationFilm: UILabel?
    @IBOutlet weak var productionYear: UILabel?
    @IBOutlet weak var imageFilm: UIImageView?
    @IBOutlet weak var infoAditionalView: UIView?
    
    
    // MARK: - Variables
    public var film: Film = Film()
    
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        // Se personaliza la vista que contiene la vista de información adicional
        self.infoAditionalView?.layer.borderWidth = 1.0
        self.infoAditionalView?.layer.borderColor = UIColor.systemGray.cgColor
        self.infoAditionalView?.layer.cornerRadius = 1.0
        // Se pinta la información completa de la película en los diferentes elementos
        // Esta información es la que viene dada desde la pantalla anterior que se envía
        // a este viewController mediante el pushViewController y que se almacena en la
        // variable pública films definida en esta misma clase
        self.nameFilm?.text = film.nameFilm
        self.resumeFilm?.text = film.summaryFilm
        self.actorsFilm?.text = ""
        // Se hacen unos pequeños ajustes para pintar correctamente todos los actores
        // en la etiqueta que le corresponde.
        if let actors = film.actorsFilm {
            for (index, act) in actors.enumerated() {
                if let text = self.actorsFilm?.text {
                    if (actors.count-1 == index) {
                        self.actorsFilm?.text = text + act + "."
                    } else {
                        self.actorsFilm?.text = text + act + ", "
                    }
                }
            }
        }
        self.durationFilm?.text = String(film.hoursDurationFilm ?? 0) + "h " + String(film.minutesDurationFilm ?? 0) + "min"
        self.platformFilm?.image = UIImage(named: film.platformFilm?.rawValue ?? "")
        self.punctuationFilm?.text = String(film.punctuactionFilm ?? 0) + "/10"
        self.productionYear?.text = String(film.productionYearFilm ?? 0)
        self.imageFilm?.image = UIImage(named: film.imageFilm ?? "")
    }
    
}
