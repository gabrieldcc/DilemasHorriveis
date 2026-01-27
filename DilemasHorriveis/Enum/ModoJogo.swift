//
//  Intensidade.swift
//  DilemasHorriveis
//
//  Created by Gabriel Castro on 22/01/26.
//

import SwiftUI

enum ModoJogo: String, CaseIterable, Identifiable {
    case leve
    case pesado
    case nerd
    case culturaBR

    var id: String { rawValue }

    var titulo: String {
        switch self {
        case .leve: return "Leve"
        case .pesado: return "Pesado"
        case .nerd: return "Nerd"
        case .culturaBR: return "Cultura BR"
        }
    }

    var emoji: String {
        switch self {
        case .leve: return "🙂"
        case .pesado: return "🔥"
        case .nerd: return "🤓"
        case .culturaBR: return "🇧🇷"
        }
    }

    func color(isBorder: Bool = false) -> Color {
        switch self {
        case .leve:
            return DilemaColors.orangePrimary.opacity(0.8)

        case .pesado:
            return isBorder ? DilemaColors.redSoft : DilemaColors.blackBase

        case .nerd:
            return DilemaColors.orangeSoft
            
        case .culturaBR:
            return DilemaColors.greenBrasil
        }
    }
}

#Preview {
    ModoSelectionView()
}
