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

    var id: String { rawValue }

    var titulo: String {
        switch self {
        case .leve: return "Leve"
        case .pesado: return "Pesado"
        case .nerd: return "Nerd"
        }
    }

    var emoji: String {
        switch self {
        case .leve: return "🙂"
        case .pesado: return "🔥"
        case .nerd: return "🤓"
        }
    }

    var color: Color {
        switch self {
        case .leve:
            return DilemaColors.orangePrimary.opacity(0.8)

        case .pesado:
            return DilemaColors.blackBase

        case .nerd:
            return DilemaColors.orangeSoft
        }
    }
}

#Preview {
    ModoSelectionView()
}
