//
//  Film.swift
//  MoviesApp
//
//  Created by Conrado Capilla García on 9/12/21.
//

import Foundation

struct Film {
    var imageFilm: String?
    var nameFilm: String?
    var typeFilm: typeFilm?
    var summaryFilm: String?
    var hoursDurationFilm: UInt?
    var minutesDurationFilm: UInt?
    var punctuactionFilm: Float?
    var productionYearFilm: UInt?
    var platformFilm: platformFilm?
    var actorsFilm: [String]?
}


// Enumerado para determinar el género de la película
// **************************************************

enum typeFilm {
    case terror
    case action
    case comedy
    case drama
}


// Enumerado para determinar la plataforma que la emite
// ****************************************************

enum platformFilm: String {
    case HBO = "image_1"
    case netflix = "image_2"
    case amazonPrimeVideo = "image_3"
    case disneyPlus = "image_4"
    case movistarPlus = "image_5"
}
