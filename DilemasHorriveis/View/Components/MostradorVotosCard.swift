//
//  MostradorVotosCard.swift
//  DilemasHorriveis
//
//  Created by Gabriel Castro on 27/01/26.
//

import SwiftUI

struct MostradorVotosCard: View {
    let label: String
    let votes: Int
    let estado: EstadoJogo

    var body: some View {
        VStack(spacing: 12) {
            Text(label)
                .font(.title)
                .fontWeight(.black)
                .foregroundColor(.white.opacity(0.7))

            Text("\(votes)")
                .font(.headline)
                .foregroundColor(.white)
                .multilineTextAlignment(.center)
        }
        .padding()
        .frame(maxWidth: .infinity, minHeight: 140)
        .background(.ultraThinMaterial)
        .clipShape(RoundedRectangle(cornerRadius: 24))
        .overlay(
            RoundedRectangle(cornerRadius: 24)
                .stroke(Color.white.opacity(0.1))
        )
        .animation(.easeInOut(duration: 0.35), value: estado)
    }
}
