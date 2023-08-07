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
    var categorie: Categories
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

struct Categories: Identifiable {
    var id = UUID()
    var nom : String
    var description : String
    var image : String
}

var categories : [Categories] = [Categories(nom: "Soft", description: "Pour ceux qui veulent briser la glace et y aller en douceur, sans prendre le risque d'être choqués...", image: "licorne"),
                                 Categories(nom: "WTF", description: "Pour découvrir tous les actes wtf de vos amis, des choses auxquelles vous n'auriez pas forcément pensé...", image: "munch"),
                                 Categories(nom: "Consommations", description: "Alcool, drogues... qu'avez vous consommé, en quelle quantité, etc...", image: "videogames"),
                                 Categories(nom: "Hot", description: "Pour ceux qui veulent des questions co... des questions ...quines, des questions coquiiines!", image: "piment"),
                                 Categories(nom: "Tout en un", description: "Ce mode vous permet de réunir toutes les catégories ci-desssus, plus de limites!", image: "nolimit")
]


var cartes : [Cards] = [Cards(label: .deja, textes: "dormi par terre", categorie: categories[0]),
                        Cards(label: .deja, textes: "pris de la drogue", categorie: categories[2]),
                        Cards(label: .jamais, textes: "quitter l'Europe", categorie: categories[0]),
                        Cards(label: .deja, textes: "eu la gueule de bois", categorie: categories[2]),
                        Cards(label: .deja, textes: "tromper ton partenaire", categorie: categories[3]),
                        Cards(label: .jamais, textes: "manger d'escargots", categorie: categories[0]),
                        Cards(label: .deja, textes: "pratiquer la sodomie", categorie: categories[3]),
                        Cards(label: .deja, textes: "tricher à un examen", categorie: categories[0]),
                        Cards(label: .jamais, textes: "été propriétaire", categorie: categories[0]),
                        Cards(label: .deja, textes: "été en garde à vue", categorie: categories[1]),
                        Cards(label: .all, textes: "s'il a déjà vu une personne présente nu(e)", categorie: categories[3]),
                        Cards(label: .all, textes: "par personne présente qu'il a déjà embrasse", categorie: categories[3]),
                        Cards(label: .deja, textes: "surpris tes parents au lit", categorie: categories[3]),
                        Cards(label: .bomba, textes: "Tout le monde boit une gorgée!", categorie: categories[4]),
                        Cards(label: .bois, textes: "Bois, c'est cadeau!", categorie: categories[4]),
                        Cards(label: .vote, textes: "bois", categorie: categories[4]),
                        Cards(label: .vote, textes: "a eu le plus de partenaire .. et bois!", categorie: categories[3]),
                        Cards(label: .all, textes: "bois s'il a eu plus de 10 partenaires", categorie: categories[3]),
                        Cards(label: .deja, textes: "par drogues que tu as déjà pris", categorie: categories[2]),
                        Cards(label: .jamais, textes: "utilisé de protections 👀 ", categorie: categories[3]),
                        Cards(label: .deja, textes: "couché avec deux personnes en 24h", categorie: categories[3]),
                        Cards(label: .deja, textes: "fait un plan à 3", categorie: categories[3]),
                        Cards(label: .deja, textes: "fantasmé sur un parent d'un ami", categorie: categories[3]),
                        Cards(label: .deja, textes: "ou t'es déjà fait pété le frein.", categorie: categories[3]),
                        Cards(label: .jamais, textes: "eu de chat", categorie: categories[0]),
                        Cards(label: .deja, textes: "fais caca la porte ouverte", categorie: categories[0]),
                        Cards(label: .deja, textes: "léché des pieds", categorie: categories[1]),
                        Cards(label: .deja, textes: "mangé de la nourriture pour animaux", categorie: categories[1]),
                        Cards(label: .deja, textes: "pissé sur quelqu'un", categorie: categories[1]),
                        Cards(label: .deja, textes: "dépucelé quelqu'un", categorie: categories[3]),
                        Cards(label: .deja, textes: "couché avec un(e) collègue", categorie: categories[3]),
                        Cards(label: .deja, textes: "pété pendant l'acte", categorie: categories[3]),
                        Cards(label: .deja, textes: "simulé l'orgasme", categorie: categories[3]),
                        Cards(label: .deja, textes: "fantasmé sur un(e) ami(e)", categorie: categories[3]),
                        Cards(label: .deja, textes: "séché le travail", categorie: categories[0]),
                        Cards(label: .deja, textes: "envoyé un sexto à la mauvaise personne", categorie: categories[3]),
                        Cards(label: .deja, textes: "remis les mêmes souvetements", categorie: categories[1]),
                        Cards(label: .deja, textes: "consommé de la drogue cette semaine", categorie: categories[2]),
                        Cards(label: .deja, textes: "fait un badtrip", categorie: categories[2]),
                        Cards(label: .deja, textes: "vomis à cause de l'alcool", categorie: categories[2]),
                        Cards(label: .deja, textes: "avalé du vomis", categorie: categories[1]),
                        Cards(label: .deja, textes: "pratiqué le BDSM", categorie: categories[3]),
                        Cards(label: .vote, textes: "a le plus bu! Et bois!", categorie: categories[4]),
                        Cards(label: .vote, textes: "qui a l'esprit le plus sale! Il/Elle boit!", categorie: categories[3]),
                        Cards(label: .master, textes: "désigne une personne qui boit", categorie: categories[4]),
                        Cards(label: .master, textes: "boit!", categorie: categories[4]),
                        Cards(label: .bomba, textes: "Le prochain qui rit boit", categorie: categories[4]),
                        Cards(label: .bomba, textes: "Le prochain qui rit choisit quelqu'un pour boire", categorie: categories[4]),
                        Cards(label: .alliance, textes: "et dès que l'un boit, l'autre boit", categorie: categories[4])
]

func filterCards (categories: Categories) -> [Cards] {
    let filteredCards = cartes.filter { carte in
        carte.categorie.id == categories.id
    }
    return filteredCards
}

