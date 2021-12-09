//
//  SplashScreenController.swift
//  MoviesApp
//
//  Created by Conrado Capilla García on 9/12/21.
//

import UIKit

class SplashScreenController: UIViewController {
    
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigateToFilmsView()
    }
    
    
    // MARK: - Private functions
    
    private func navigateToFilmsView () {
        // Se ejecuta una vez que pasen 2 segundos
        DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(2)) { [weak self] in
            // Se obtiene el Storyboard donde se encuentra el ViewController hacia el que se quiere navegar
            let storyBoardFilms: UIStoryboard = UIStoryboard(name: "Films", bundle: nil)
            // Se obtiene el viewController hacia el que se quiere navegar
            if let destination: UIViewController = storyBoardFilms.instantiateInitialViewController() {
                // Se hace la navegación hacia la pantalla de las películas con el TabBar
                self?.navigationController?.setViewControllers([destination], animated: true)
            }
        }
    }
    
    
}
