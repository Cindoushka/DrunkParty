//
//  FontsCreation.swift
//  Jenaijamais
//
//  Created by Cindy Bajoni on 02/08/2023.
//

import Foundation
import SwiftUI


extension View {
    func eduSAFont(weight: eduWeight, size: CGFloat) -> some View {
        switch weight {
        case .regular:
            return self.font(.custom("EduSABeginner-Regular", size: size))
        case .bold:
            return self.font(.custom("EduSABeginner-Bold", size: size))
        case .medium:
            return self.font(.custom("EduSABeginner-Medium", size: size))
        case .semibold:
            return self.font(.custom("EduSABeginner-SemiBold", size: size))
        }
    }
    func neonderhrawFont(size: CGFloat) -> some View {
        self
            .font(.custom("Neonderthaw-Regular", size: size))
    }
    func badScriptFont(size: CGFloat) -> some View {
        self
            .font(.custom("BadScript-Regular", size: size))
    }
}

enum eduWeight {
    case regular, bold, medium, semibold
}
