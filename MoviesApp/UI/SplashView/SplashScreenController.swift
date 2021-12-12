//
//  SplashScreenController.swift
//  MoviesApp
//
//  Created by Conrado Capilla García on 9/12/21.
//

import UIKit

class SplashScreenController: UIViewController {
    
    
    // MARK: - UI elements
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView?
    
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        navigateToFilmsView()
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        self.activityIndicator?.stopAnimating()
    }
    
    
    // MARK: - Private functions
    private func navigateToFilmsView () {
        // Se retrasa la navegación a la pantalla de las películas durante dos segundos para
        // ofrecer una mejor experiencia de usuario y que también se pueda ver la splashScreen
        DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(2)) { [weak self] in
            // Se obtiene el Storyboard donde se encuentra el ViewController hacia el que se quiere navegar
            let storyBoardFilms: UIStoryboard = UIStoryboard(name: .storyboardFilms, bundle: nil)
            // Se obtiene el viewController hacia el que se quiere navegar del storyboard anterior
            if let destination: UIViewController = storyBoardFilms.instantiateInitialViewController() {
                // Se hace la navegación hacia la pantalla de las películas utilizando el SET y no el PUSH
                self?.navigationController?.setViewControllers([destination], animated: true)
            }
        }
    }
    
    
}


private extension String {
    static let storyboardFilms: String = "Films"
}
