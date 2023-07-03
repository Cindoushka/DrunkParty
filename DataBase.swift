//
//  DataBase.swift
//  Jenaijamais
//
//  Created by Cindy Bajoni on 26/06/2023.
//

import Foundation

struct Cards: Identifiable {
    var id = UUID()
    var label : Labels
    var textes : String
}

enum Labels : String {
    case jamais = "Je n'ai jamais"
    case deja = "J'ai déjà"
}

var cartes : [Cards] = [Cards(label: .jamais, textes: "...dormi par terre"),
                        Cards(label: .jamais, textes: "...pris de drogue"),
                        Cards(label: .deja, textes: "...quitter l'Europe"),
                        Cards(label: .jamais, textes: "...eu la gueule de bois"),
                        Cards(label: .jamais, textes: "...tromper mon partenaire"),
                        Cards(label: .deja, textes: "...manger d'escargots"),
                        Cards(label: .jamais, textes: "...pratiquer la sodomie"),
                        Cards(label: .jamais, textes: "...tricher à un examen"),
                        Cards(label: .deja, textes: "...été propriétaire"),
                        Cards(label: .jamais, textes: "...été en garde à vue")
]


