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
    case jamais = "bois si tu n'as jamais"
    case deja = "bois si tu as déjà"
    case all = "Tout le monde boit"
    case bomba = ""
    case bois = " "
    case vote = "À 3 tout le monde vote pour celui qui"
    case alliance = "choisit quelqu'un"
    case master = "Le Maître du Jeu"
}

var cartes : [Cards] = [Cards(label: .deja, textes: "dormi par terre"),
                        Cards(label: .deja, textes: "pris de la drogue"),
                        Cards(label: .jamais, textes: "quitter l'Europe"),
                        Cards(label: .deja, textes: "eu la gueule de bois"),
                        Cards(label: .deja, textes: "tromper ton partenaire"),
                        Cards(label: .jamais, textes: "manger d'escargots"),
                        Cards(label: .deja, textes: "pratiquer la sodomie"),
                        Cards(label: .deja, textes: "tricher à un examen"),
                        Cards(label: .jamais, textes: "été propriétaire"),
                        Cards(label: .deja, textes: "été en garde à vue"),
                        Cards(label: .all, textes: "s'il a déjà vu une personne présente nu(e)"),
                        Cards(label: .all, textes: "par personne présente qu'il a déjà embrasse"),
                        Cards(label: .deja, textes: "surpris tes parents au lit"),
                        Cards(label: .bomba, textes: "Tout le monde boit une gorgée!"),
                        Cards(label: .bois, textes: "Bois, c'est cadeau!"),
                        Cards(label: .vote, textes: "bois"),
                        Cards(label: .vote, textes: "a eu le plus de partenaire .. et bois!"),
                        Cards(label: .all, textes: "bois s'il a eu plus de 10 partenaires"),
                        Cards(label: .deja, textes: "par drogues que tu as déjà pris"),
                        Cards(label: .jamais, textes: "utilisé de protections 👀 "),
                        Cards(label: .deja, textes: "couché avec deux personnes en 24h"),
                        Cards(label: .deja, textes: "fait un plan à 3"),
                        Cards(label: .deja, textes: "fantasmé sur un parent d'un ami"),
                        Cards(label: .deja, textes: "ou t'es déjà fait pété le frein."),
                        Cards(label: .jamais, textes: "eu de chat"),
                        Cards(label: .deja, textes: "fais caca la porte ouverte"),
                        Cards(label: .deja, textes: "léché des pieds"),
                        Cards(label: .deja, textes: "mangé de la nourriture pour animaux"),
                        Cards(label: .deja, textes: "pissé sur quelqu'un"),
                        Cards(label: .deja, textes: "dépucelé quelqu'un"),
                        Cards(label: .deja, textes: "couché avec un(e) collègue"),
                        Cards(label: .deja, textes: "pété pendant l'acte"),
                        Cards(label: .deja, textes: "simulé l'orgasme"),
                        Cards(label: .deja, textes: "fantasmé sur un(e) ami(e)"),
                        Cards(label: .deja, textes: "séché le travail"),
                        Cards(label: .deja, textes: "envoyé un sexto à la mauvaise personne"),
                        Cards(label: .deja, textes: "remis les mêmes souvetements"),
                        Cards(label: .deja, textes: "consommé de la drogue cette semaine"),
                        Cards(label: .deja, textes: "fait un badtrip"),
                        Cards(label: .deja, textes: "vomis à cause de l'alcool"),
                        Cards(label: .deja, textes: "avalé du vomis"),
                        Cards(label: .deja, textes: "pratiqué le BDSM"),
                        Cards(label: .vote, textes: "a le plus bu! Et bois!"),
                        Cards(label: .vote, textes: "qui a l'esprit le plus sale! Il/Elle boit!"),
                        Cards(label: .master, textes: "désigne une personne qui boit"),
                        Cards(label: .master, textes: "boit!"),
                        Cards(label: .bomba, textes: "Le prochain qui rit boit"),
                        Cards(label: .bomba, textes: "Le prochain qui rit choisit quelqu'un pour boire"),
                        Cards(label: .alliance, textes: "et dès que l'un boit, l'autre boit")
]


struct Categories: Identifiable {
    var id = UUID()
    var nom : String
    var description : String
    var image : String
}

var categories : [Categories] = [Categories(nom: "Soft", description: "Pour ceux qui veulent briser la glace et y aller en douceur, sans prendre le risque d'être choqués...", image: "licorne"),
                                 Categories(nom: "Hot", description: "Pour ceux qui veulent des questions co... des questions ...quines, des questions coquiiines!", image: "piment"),
                                 Categories(nom: "WTF", description: "Pour découvrir tous les actes wtf de vos amis, des choses auxquelles vous n'auriez pas forcément pensé...", image: "munch"),
                                 Categories(nom: "Jeux vidéos", description: "Pour les passionnés de jeux vidéos, qui a déjà fait un pentakill? Qui n'a jamais été MVP?...", image: "videogames"),
                                 Categories(nom: "Tout en un", description: "Ce mode vous permet de réunir toutes les catégories ci-desssus, plus de limites!", image: "nolimit")
]
