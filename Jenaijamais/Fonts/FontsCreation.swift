//
//  FontsCreation.swift
//  Jenaijamais
//
//  Created by Cindy Bajoni on 02/08/2023.
//

import Foundation
import SwiftUI


extension View {
    func montserratFont(size: CGFloat) -> some View {
        self
            .font(.custom("Montserrat-Thin", size: size))
    }
    
    func neonderhrawFont(size: CGFloat) -> some View {
        self
            .font(.custom("Neonderthaw-Regular", size: size))
    }
    
    func sacramentoFont(size: CGFloat) -> some View {
        self
            .font(.custom("Sacramento-Regular", size: size))
    }
}
