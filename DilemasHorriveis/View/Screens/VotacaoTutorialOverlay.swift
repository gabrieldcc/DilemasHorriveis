//
//  VotacaoTutorialOverlay.swift
//  DilemasHorriveis
//
//  Created by Gabriel Castro on 27/01/26.
//

import SwiftUI

struct VotacaoTutorialOverlay: View {
    let onClose: () -> Void

    var body: some View {
        ZStack(alignment: .topTrailing) {

            // Fundo escuro translúcido
            Color.black.opacity(0.85)
                .ignoresSafeArea()

            VStack(spacing: 24) {
                Spacer()

                Text("🗳️ Como funciona a votação")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.white)

                Text("""
Cada pessoa da roda vai votar em A ou B, sem falar em voz alta.

Depois que todos votarem, quem fez a pergunta tenta adivinhar qual opção foi a mais escolhida.

Quando revelar os votos, o app mostra:
• Quantos votos teve em cada opção
• Se o palpite estava certo ou errado
""")
                .font(.body)
                .foregroundColor(.white.opacity(0.9))
                .multilineTextAlignment(.center)
                .padding(.horizontal)

                Spacer()
            }

            // Botão X
            Button {
                onClose()
            } label: {
                Image(systemName: "xmark")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding(16)
            }
        }
        .transition(.opacity)
        .animation(.easeInOut, value: UUID())
    }
}
