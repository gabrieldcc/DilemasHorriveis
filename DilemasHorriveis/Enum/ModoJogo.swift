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

    var gradient: LinearGradient {
        switch self {
        case .leve:
            return LinearGradient(
                colors: [.black, .gray.opacity(0.8)],
                startPoint: .top,
                endPoint: .bottom
            )

        case .pesado:
            return LinearGradient(
                colors: [.black, .red.opacity(0.85)],
                startPoint: .top,
                endPoint: .bottom
            )

        case .nerd:
            return LinearGradient(
                colors: [.black, .purple.opacity(0.85)],
                startPoint: .top,
                endPoint: .bottom
            )
        }
    }
}
