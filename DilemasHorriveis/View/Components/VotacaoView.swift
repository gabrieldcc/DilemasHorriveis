//
//  VotacaoView.swift
//  DilemasHorriveis
//
//  Created by Gabriel Castro on 27/01/26.
//

import SwiftUI

struct VotacaoView: View {
    let votosA: Int
    let votosB: Int
    let estado: EstadoJogo
    let onRevelar: () -> Void

    var body: some View {
        VStack(spacing: 12) {
            if estado == .revelando {
                HStack {
                    Text("A: \(votosA)")
                    Spacer()
                    Text("B: \(votosB)")
                }
                .font(.headline)
            } else {
                Text("Votos registrados \(votosA + votosB)")
                    .font(.subheadline)
                    .opacity(0.7)
            }

            Button("Revelar votos") {
                onRevelar()
            }
            .buttonStyle(.borderedProminent)
        }
        .padding()
        .background(.ultraThinMaterial)
        .clipShape(RoundedRectangle(cornerRadius: 16))
    }
}
