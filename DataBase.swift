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
    case all = "Tout le monde"
    case bomba = ""
    case bois = " "
    case vote = "À 3 tout le monde vote pour celui qui..."
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
                        Cards(label: .jamais, textes: "...été en garde à vue"),
                        Cards(label: .all, textes: "s'il a déjà vu une personne présente nu(e)"),
                        Cards(label: .all, textes: "par personne présente qu'il a déjà embrasse"),
                        Cards(label: .deja, textes: "surpris tes parents au lit"),
                        Cards(label: .bomba, textes: "Tout le monde boit une gorgée!"),
                        Cards(label: .bois, textes: "Bois, c'est cadeau!"),
                        Cards(label: .vote, textes: "...bois"),
                        Cards(label: .vote, textes: "...a eu le plus de partenaire .. et bois!"),
                        Cards(label: .all, textes: "...bois s'il a eu plus de 10 partenaires"),
                        Cards(label: .deja, textes: "...par drogues que tu as déjà pris"),
                        Cards(label: .jamais, textes: "...utilisé de protections 👀 "),
                        Cards(label: .deja, textes: "...couché avec deux personnes en 24h"),
                        Cards(label: .deja, textes: "...fait un plan à 3"),
                        Cards(label: .deja, textes: "...fantasmé sur un parent d'un ami"),
                        Cards(label: .deja, textes: "... si tu as déjà ou t'es déjà fait pété le frein.")
]


