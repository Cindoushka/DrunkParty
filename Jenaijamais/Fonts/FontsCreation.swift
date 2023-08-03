//
//  FontsCreation.swift
//  Jenaijamais
//
//  Created by Cindy Bajoni on 02/08/2023.
//

import Foundation
import SwiftUI


extension View {
    func ingridDarlingFont(size: CGFloat) -> some View {
        self
            .font(.custom("IngridDarling-Regular", size: size))
    }
    
    func neonderhrawFont(size: CGFloat) -> some View {
        self
            .font(.custom("Neonderthaw-Regular", size: size))
    }
}
