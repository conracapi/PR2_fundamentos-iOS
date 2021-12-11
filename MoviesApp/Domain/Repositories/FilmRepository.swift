//
//  FilmRepository.swift
//  MoviesApp
//
//  Created by Conrado Capilla García on 9/12/21.
//

import Foundation

class FilmRepository {
    
    var films: [Film] = [
        
        /* ============================================= */
        /* ==========   PELÍCULAS DE TERROR   ========== */
        /* ============================================= */

        // Película (1) de terror: Alien - el octavo pasajero
        // **************************************************
        Film(imageFilm: "Alien", nameFilm: "Alien, el octavo pasajero", typeFilm: .terror,
             summaryFilm: "De regreso a la Tierra, la nave de carga Nostromo interrumpe su viaje y despierta a sus siete tripulantes. El ordenador central, MADRE, ha detectado la misteriosa transmisión de una forma de vida desconocida, procedente de un planeta cercano aparentemente deshabitado. La nave se dirige entonces al extraño planeta para investigar el origen de la comunicación.",
             hoursDurationFilm: 1, minutesDurationFilm: 57, punctuactionFilm: 8.1,
             productionYearFilm: 1979, platformFilm: .netflix,
             actorsFilm: ["Sigourney Weaver", "Tom Skerritt", "John Hurt", "Veronica Cartwright", "Harry Dean Stanton"]),
        
        // Película (2) de terror - El resplandor
        // **************************************
        Film(imageFilm: "Resplandor", nameFilm: "El resplandor", typeFilm: .terror,
             summaryFilm: "Jack Torrance se traslada, junto a su mujer y a su hijo, al impresionante hotel Overlook, en Colorado, para encargarse del mantenimiento del mismo durante la temporada invernal, en la que permanece cerrado y aislado por la nieve. Su idea es escribir su novela al tiempo que cuida de las instalaciones durante esos largos y solitarios meses de invierno, pero desde su llegada al hotel, Jack comienza a padecer inquietantes transtornos de personalidad, al mismo tiempo que en el lugar comienzan a suceder diversos fenómenos paranormales.",
             hoursDurationFilm: 2, minutesDurationFilm: 26, punctuactionFilm: 8.2,
             productionYearFilm: 1980, platformFilm: .movistarPlus,
             actorsFilm: ["Jack Nicholson", "Shelley Duvall", "Scatman Crothers", "Danny Looyd", "Barry Nelson"]),
        
        // Película (3) de terror - El exorcista
        // *************************************
        Film(imageFilm: "Exorcista", nameFilm: "El exorcista", typeFilm: .terror,
             summaryFilm: "Regan es una niña de doce años víctima de fenómenos paranormales como la levitación o la manifestación de una fuerza sobrehumana. Su madre, aterrorizada, tras someter a su hija a múltiples análisis médicos que no ofrecen ningún resultado, acude a un sacerdote con estudios de psiquiatría. Éste está convencido de que el mal no es físico sino espiritual, es decir, que la niña es víctima de una posesión diabólica. Por eso, con la ayuda de otro sacerdote decide practicar un exorcismo.",
             hoursDurationFilm: 2, minutesDurationFilm: 2, punctuactionFilm: 7.7,
             productionYearFilm: 1973, platformFilm: .amazonPrimeVideo,
             actorsFilm: ["Ellen Burstyn", "Linda Blair", "Max von Sydow", "Lee J. Cobb", "Kitty Winn"]),
        
        // Película (4) de terror - Expediente Warren: El caso Enfield
        // ***********************************************************
        Film(imageFilm: "Expediente_Warren", nameFilm: "Expediente Warren: El caso Enfield", typeFilm: .terror,
             summaryFilm: "Secuela de la exitosa 'Expediente Warren' (2013), que lleva de nuevo a la pantalla otro caso real de los expedientes de los renombrados demonólogos Ed y Lorraine Warren. En este caso ambos viajarán al norte de Londres para ayudar a una madre soltera que tiene a su cargo cuatro hijos y que vive sola con ellos en una casa plagada de espíritus malignos.",
             hoursDurationFilm: 2, minutesDurationFilm: 14, punctuactionFilm: 7.3,
             productionYearFilm: 2016, platformFilm: .HBO,
             actorsFilm: ["Patrick Wilson", "Vera Farmiga", "Madison Wolfe", "Frances O'Connor", "Simon McBurney"]),
        
        // Película (5) de terror - It
        // ***************************
        Film(imageFilm: "It", nameFilm: "It", typeFilm: .terror,
             summaryFilm: "Remake del clásico de Stephen King en el que un payaso aterroriza a los niños de un vecindario. En un pequeño pueblo de Maine, siete niños conocidos como el Club de los Perdedores se encuentran cara a cara con problemas de la vida, matones y un monstruo que toma la forma de un payaso llamado Pennywise.",
             hoursDurationFilm: 2, minutesDurationFilm: 15, punctuactionFilm: 7.2,
             productionYearFilm: 2017, platformFilm: .movistarPlus,
             actorsFilm: ["Jaeden Martell", "Jeremy Ray Taylor", "Sophia Lillis", "Finn Wolfhard", "Chosen Jacobs"]),
        
        // Película (6) de terror - Pesadilla en Elm Street (El origen)
        // ************************************************************
        Film(imageFilm: "Pesadilla", nameFilm: "Pesadilla en Elm Street (El origen)", typeFilm: .terror,
             summaryFilm: "Versión contemporánea del clásico del cine de terror. Un grupo de adolescentes de los suburbios empiezan a ser perseguidos por Freddy Krueger, un asesino de aspecto terrible y con el rostro quemado que trata de acabar con ellos mientras duermen. Necesitan, pues, permanecer despiertos para protegerse mutuamente. Pero, si duermen, no hay escapatoria.",
             hoursDurationFilm: 1, minutesDurationFilm: 42, punctuactionFilm: 5.5,
             productionYearFilm: 2010, platformFilm: .amazonPrimeVideo,
             actorsFilm: ["Jackie Earle Haley", "Kyle Gallner", "Rooney Mara", "Katie Cassidy", "Thomas Dekker"]),
        
        // Película (7) de terror - La maldición de Lake Manor
        // ***************************************************
        Film(imageFilm: "Maldicion", nameFilm: "La maldición de Lake Manor", typeFilm: .terror,
             summaryFilm: "Samuel, un niño que vive con su madre Elena en Villa dei Laghi, una finca aislada rodeada de bosques, se siente atrapado por la rutina familiar, creciendo aparentemente protegido, pero insatisfecho e inquieto.",
             hoursDurationFilm: 1, minutesDurationFilm: 49, punctuactionFilm: 6.3,
             productionYearFilm: 2019, platformFilm: .disneyPlus,
             actorsFilm: ["Francesca Cavallin", "Ginevra Francesconi", "Justin Alexander Korovkin", "Maurizio Lombardi", "Elisabetta De Vito"]),
        
        // Película (8) de terror - The Owners (Los propietarios)
        // ******************************************************
        Film(imageFilm: "Propietarios", nameFilm: "The Owners (Los propietarios)", typeFilm: .terror,
             summaryFilm: "Un grupo de amigos cree que encuentran un blanco fácil en una casa vacía con una caja fuerte llena de dinero en efectivo. Pero cuando la pareja de ancianos que vive allí llega temprano a casa, las cosas cambian de repente. Mientras se produce un juego mortal del gato y el ratón, los posibles ladrones deben luchar para salvarse de una pesadilla que nunca hubieran imaginado.",
             hoursDurationFilm: 1, minutesDurationFilm: 32, punctuactionFilm: 5.7,
             productionYearFilm: 2020, platformFilm: .disneyPlus,
             actorsFilm: ["Maisie Williams", "Sylvester McCoy", "Rita Tushingham", "Jake Curran", "Andrew Ellis"]),
        
        
        /* ============================================= */
        /* ==========   PELÍCULAS DE ACCIÓN   ========== */
        /* ============================================= */
        
        // Película (1) de acción: Sin tiempo para morir
        // *********************************************
        Film(imageFilm: "Sin_tiempo_para_morir", nameFilm: "Sin tiempo para morir", typeFilm: .action,
             summaryFilm: "En ‘No Time to Die’, James Bond se encuentra disfrutando de unas merecidas vacaciones en Jamaica. Sin embargo, su paz termina cuando su amigo de la CIA, Felix Leiter, lo busca para una nueva misión que implica rescatar a un importante científico que ha sido secuestrado.",
             hoursDurationFilm: 2, minutesDurationFilm: 43, punctuactionFilm: 7.6,
             productionYearFilm: 2021, platformFilm: .netflix,
             actorsFilm: ["Daniel Craig", "Rami Malek", "Léa Seydoux", "Ralph Fiennes", "Ben Whishaw"]),
        
        // Película (2) de acción: Contacto sangriento
        // *******************************************
        Film(imageFilm: "Contacto_sangriento", nameFilm: "Contacto sangriento", typeFilm: .action,
             summaryFilm: "Cada cinco años se celebra el 'Kumite', un torneo secreto de artes marciales en el que se enfrentan, a vida o muerte, los mejores luchadores del mundo. Frank Dux, que trabaja eventualmente para la CIA, se convertirá en el primer occidental que participa en este torneo. Pero, para ganar, deberá derrotar al despiadado Chong Li, el vigente campeón.",
             hoursDurationFilm: 1, minutesDurationFilm: 32, punctuactionFilm: 7.0,
             productionYearFilm: 1988, platformFilm: .movistarPlus,
             actorsFilm: ["Jean-Claude Van Damme", "Bolo Yeung", "Donald Gibb", "Leah Ayres", "Norman Burton"]),
        
        // Película (3) de acción: Oldboy
        // ******************************
        Film(imageFilm: "Oldboy", nameFilm: "Oldboy", typeFilm: .action,
             summaryFilm: "Min-sik Choi es un hombre de negocios coreano que un día es secuestrado y confinado durante años en una celda en la que sólo hay una televisión. Y, sin embargo, ignora por qué razón está allí... Es la segunda parte de la 'trilogía de la venganza' de Chan-wook Park.",
             hoursDurationFilm: 1, minutesDurationFilm: 59, punctuactionFilm: 8.3,
             productionYearFilm: 2003, platformFilm: .disneyPlus,
             actorsFilm: ["Choi Min-sik", "Yoo Ji-tae", "Kang Hye-jung", "Kim Byung-ok", "Ji Dae-han"]),
        
        // Película (4) de acción: Robocop
        // *******************************
        Film(imageFilm: "Robocop", nameFilm: "Robocop", typeFilm: .action,
             summaryFilm: "Parte del cuerpo de un policía asesinado, es utilizado para crear un «superpolicía» con cuerpo mecánico y cerebro humano. Aunque los científicos aseguran que el robot no tendrá remordimientos, éstos acabarán apareciendo en la memoria del humanoide.",
             hoursDurationFilm: 1, minutesDurationFilm: 42, punctuactionFilm: 7.3,
             productionYearFilm: 1987, platformFilm: .HBO,
             actorsFilm: ["Peter Weller", "Nancy Allen", "Ronny Cox", "Kurtwood Smith", "Miguel Ferrer"]),
        
        // Película (5) de acción: Fast & Furious 7
        // ****************************************
        Film(imageFilm: "Fast_Furious", nameFilm: "Fast & Furious 7", typeFilm: .action,
             summaryFilm: "De nuevo los problemas les persiguen. Sin conseguir librarse de la mancha de criminales de su ficha. Su pasado de larga trayectoria en las carreras ilegales les perseguirá y deberán hacer frente a las circunstancias de la única forma que saben. Cuando les pongan entre la espada y la pared idearán un plan para escapar del peligro en una trepidante carrera por salvar la vida y limpiar su reputación. Acción, persecuciones y un ritmo frenético en esta nueva entrega.",
             hoursDurationFilm: 2, minutesDurationFilm: 17, punctuactionFilm: 7.3,
             productionYearFilm: 2015, platformFilm: .amazonPrimeVideo,
             actorsFilm: ["Vin Diesel", "Paul Walker", "Dwayne Johnson", "Michelle Rodriguez", "Tyrese Gibson"]),
        
        // Película (6) de acción: Los mercenarios 2
        // *****************************************
        Film(imageFilm: "Mercenarios", nameFilm: "Los mercenarios 2", typeFilm: .action,
             summaryFilm: "Barney Ross, Lee Christmas, Yin Yang, Gunner Jensen, Toll Road, Hale Caesar y Billy, un nuevo colega, se vuelven a reunir cuando el señor Church les encarga un trabajo aparentemente sencillo y muy lucrativo. Sin embargo, el plan se tuerce cuando un peligroso terrorista llamado Villain les tiende una emboscada. Entonces su único deseo será vengarse. Así es como van sembrando a su paso la destrucción y el caos entre sus enemigos hasta que se encuentran con una amenaza inesperada: cinco toneladas de plutonio apto para uso militar, una cantidad más que suficiente para cambiar el equilibrio de poder en el mundo.",
             hoursDurationFilm: 1, minutesDurationFilm: 42, punctuactionFilm: 6.3,
             productionYearFilm: 2012, platformFilm: .netflix,
             actorsFilm: ["Sylvester Stallone", "Jason Statham", "Jet Li", "Dolph Lundgren", "Chuck Norris"]),
        
        // Película (7) de acción: 13 asesinos
        // ***********************************
        Film(imageFilm: "13_asesinos", nameFilm: "13 asesinos", typeFilm: .action,
             summaryFilm: "El ascenso al poder del joven y sanguinario Lord Naritsugu supone una seria amenaza para la paz en el Japón feudal. Simplemente por ser el hermano del shogun, Lord Naritsugu está por encima de la ley, y asesina y viola a su antojo. Afligido por la masacre perpetrada por el sádico Naritsugu, el oficial Sir Doi contacta secretamente con el samurái Shinzaemon Shimada para acabar con Naritsugu. El noble samurái, indignado por la crueldad de Naritsugu, acepta de buen grado la peligrosa misión. Para ello, reúne a un selecto grupo de samuráis, entre los que se encuentra su sobrino Shinrokuro y el devoto aprendiz Hirayama. Juntos, traman una emboscada para atrapar a Lord Naritsugu. Shinzaemon es consciente del peligro que conlleva. Naritsugu va escoltado por una comitiva encabezada por el letal e implacable Hanbei, uno de sus antiguos rivales. Los “13 asesinos” de Takashi Miike es un remake del film homónimo dirigido por Eichi Kudo en 1963.",
             hoursDurationFilm: 2, minutesDurationFilm: 6, punctuactionFilm: 7.3,
             productionYearFilm: 2010, platformFilm: .movistarPlus,
             actorsFilm: ["Koji Yakusho", "Takayuki Yamada", "Yusuke Iseya", "Goro Inagaki", "Kazue Fukiishi"]),
        
        // Película (8) de acción: El Caso Bourne
        // **************************************
        Film(imageFilm: "Bourne", nameFilm: "El Caso Bourne", typeFilm: .action,
             summaryFilm: "Un hombre amnésico es rescatado por la tripulación de un barco pesquero italiano cuando flota a la deriva en el mar. Carece de identidad y de pasado, pero posee unas serie de talentos extraordinarios en artes lingüísticas, marciales y de autodefensa que sugieren una profesión de riesgo. Confuso y desorientado, emprende una frenética búsqueda para descubrir quién es y por qué su vida ha tomado un giro tan peligroso.",
             hoursDurationFilm: 1, minutesDurationFilm: 53, punctuactionFilm: 7.4,
             productionYearFilm: 2002, platformFilm: .amazonPrimeVideo,
             actorsFilm: ["Matt Damon", "Franka Potente", "Chris Cooper", "Clive Owen", "Brian Cox"])
        
        
    ]
    
    
    
}
