//
//  ContentView.swift
//  Jenaijamais
//
//  Created by Cindy Bajoni on 26/06/2023.
//

import SwiftUI

struct ContentView: View {
    @StateObject var participantsList = ParticipantsList()

    var body: some View {

        Accueil()
            .environmentObject(participantsList)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
