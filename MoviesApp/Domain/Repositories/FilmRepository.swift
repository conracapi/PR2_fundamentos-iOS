//
//  FilmRepository.swift
//  MoviesApp
//
//  Created by Conrado Capilla García on 9/12/21.
//

import Foundation

class FilmRepository {
    
    var films: [Film] = [
        
        // Película (1) de terror: Alien - el octavo pasajero
        // **************************************************
        Film(imageFilm: "", nameFilm: "Alien, el octavo pasajero", typeFilm: .terror,
             summaryFilm: "De regreso a la Tierra, la nave de carga Nostromo interrumpe su viaje y despierta a sus siete tripulantes. El ordenador central, MADRE, ha detectado la misteriosa transmisión de una forma de vida desconocida, procedente de un planeta cercano aparentemente deshabitado. La nave se dirige entonces al extraño planeta para investigar el origen de la comunicación.",
             hoursDurationFilm: 1, minutesDurationFilm: 57, punctuactionFilm: 8.1,
             productionYearFilm: 1979, platformFilm: .disneyPlus,
             actorsFilm: ["Sigourney Weaver", "Tom Skerritt", "John Hurt", "Veronica Cartwright", "Harry Dean Stanton"]),
        
        // Película (2) de terror - El resplandor
        // **************************************
        Film(imageFilm: "", nameFilm: "El resplandor", typeFilm: .terror,
             summaryFilm: "Jack Torrance se traslada, junto a su mujer y a su hijo, al impresionante hotel Overlook, en Colorado, para encargarse del mantenimiento del mismo durante la temporada invernal, en la que permanece cerrado y aislado por la nieve. Su idea es escribir su novela al tiempo que cuida de las instalaciones durante esos largos y solitarios meses de invierno, pero desde su llegada al hotel, Jack comienza a padecer inquietantes transtornos de personalidad, al mismo tiempo que en el lugar comienzan a suceder diversos fenómenos paranormales.",
             hoursDurationFilm: 2, minutesDurationFilm: 26, punctuactionFilm: 8.2,
             productionYearFilm: 1980, platformFilm: .HBO,
             actorsFilm: ["Jack Nicholson", "Shelley Duvall", "Scatman Crothers", "Danny Looyd", "Barry Nelson"]),
        
        // Película (3) de terror - El exorcista
        // *************************************
        Film(imageFilm: "", nameFilm: "El exorcista", typeFilm: .terror,
             summaryFilm: "Regan es una niña de doce años víctima de fenómenos paranormales como la levitación o la manifestación de una fuerza sobrehumana. Su madre, aterrorizada, tras someter a su hija a múltiples análisis médicos que no ofrecen ningún resultado, acude a un sacerdote con estudios de psiquiatría. Éste está convencido de que el mal no es físico sino espiritual, es decir, que la niña es víctima de una posesión diabólica. Por eso, con la ayuda de otro sacerdote decide practicar un exorcismo.",
             hoursDurationFilm: 2, minutesDurationFilm: 02, punctuactionFilm: 7.7,
             productionYearFilm: 1973, platformFilm: .HBO,
             actorsFilm: ["Ellen Burstyn", "Linda Blair", "Max von Sydow", "Lee J. Cobb", "Kitty Winn"]),
        
        // Película (4) de terror - Expediente Warren: El caso Enfield
        // ***********************************************************
        Film(imageFilm: "", nameFilm: "Expediente Warren: El caso Enfield", typeFilm: .terror,
             summaryFilm: "Secuela de la exitosa 'Expediente Warren' (2013), que lleva de nuevo a la pantalla otro caso real de los expedientes de los renombrados demonólogos Ed y Lorraine Warren. En este caso ambos viajarán al norte de Londres para ayudar a una madre soltera que tiene a su cargo cuatro hijos y que vive sola con ellos en una casa plagada de espíritus malignos.",
             hoursDurationFilm: 2, minutesDurationFilm: 14, punctuactionFilm: 7.3,
             productionYearFilm: 2016, platformFilm: .netflix,
             actorsFilm: ["Patrick Wilson", "Vera Farmiga", "Madison Wolfe", "Frances O'Connor", "Simon McBurney"]),
        
        // Película (5) de terror - It
        // ***************************
        Film(imageFilm: "", nameFilm: "It", typeFilm: .terror,
             summaryFilm: "Remake del clásico de Stephen King en el que un payaso aterroriza a los niños de un vecindario. En un pequeño pueblo de Maine, siete niños conocidos como el Club de los Perdedores se encuentran cara a cara con problemas de la vida, matones y un monstruo que toma la forma de un payaso llamado Pennywise.",
             hoursDurationFilm: 2, minutesDurationFilm: 15, punctuactionFilm: 7.2,
             productionYearFilm: 2017, platformFilm: .movistarPlus,
             actorsFilm: ["Jaeden Martell", "Jeremy Ray Taylor", "Sophia Lillis", "Finn Wolfhard", "Chosen Jacobs"]),
        
        // Película (6) de terror - Pesadilla en Elm Street (El origen)
        // ************************************************************
        Film(imageFilm: "", nameFilm: "Pesadilla en Elm Street (El origen)", typeFilm: .terror,
             summaryFilm: "Versión contemporánea del clásico del cine de terror. Un grupo de adolescentes de los suburbios empiezan a ser perseguidos por Freddy Krueger, un asesino de aspecto terrible y con el rostro quemado que trata de acabar con ellos mientras duermen. Necesitan, pues, permanecer despiertos para protegerse mutuamente. Pero, si duermen, no hay escapatoria.",
             hoursDurationFilm: 1, minutesDurationFilm: 42, punctuactionFilm: 5.5,
             productionYearFilm: 2010, platformFilm: .amazonPrimeVideo,
             actorsFilm: ["Jackie Earle Haley", "Kyle Gallner", "Rooney Mara", "Katie Cassidy", "Thomas Dekker"])
        
    ]
    
    
    
}
