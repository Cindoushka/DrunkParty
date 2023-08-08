//
//  Models.swift
//  Jenaijamais
//
//  Created by Cindy Bajoni on 08/08/2023.
//

import Foundation

struct Card: Identifiable {
    var id = UUID()
    var label : Labels
    var textes : String
    var categorie: Categorie
}

enum Labels : String {
    case jamais = "bois si tu n'as jamais"
    case deja = "bois si tu as déjà"
    case all = "Tout le monde boit"
    case bomba = ""
    case bois = " "
    case vote = "À 3 tout le monde vote pour celui qui"
    case alliance = "choisit quelqu'un"
    case master = "Le Maître du Jeu"
}

struct Categorie: Identifiable {
    var id = UUID()
    var nom : String
    var description : String
    var image : String
}

func filterCards (categorie: Categorie) -> [Card] {
    let filteredCards = cartes.filter { carte in
        carte.categorie.id == categorie.id
    }
    return filteredCards
}


