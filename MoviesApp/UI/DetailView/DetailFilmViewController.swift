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
        //
        self.nameFilm?.text = film.nameFilm
        self.resumeFilm?.text = film.summaryFilm
        self.actorsFilm?.text = ""
        if let actors = film.actorsFilm {
            for (index, act) in actors.enumerated() {
                print(index)
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
