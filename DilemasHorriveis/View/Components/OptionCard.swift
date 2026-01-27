//
//  OptionCard.swift
//  DilemasHorriveis
//
//  Created by Gabriel Castro on 22/01/26.
//
import SwiftUI

struct OptionCard: View {
    let label: String
    let text: String
    let isPesado: Bool
    let onTap: () -> Void

    var body: some View {
        VStack(spacing: 12) {
            Text(label)
                .font(.title)
                .fontWeight(.black)
                .foregroundColor(.white.opacity(0.7))

            Text(text)
                .font(.headline)
                .foregroundColor(.white)
                .multilineTextAlignment(.center)
        }
        .onTapGesture {
            onTap()
        }
        .padding()
        .frame(maxWidth: .infinity, minHeight: 140)
        .background(.ultraThinMaterial)
        .clipShape(RoundedRectangle(cornerRadius: 24))
        .overlay(
            RoundedRectangle(cornerRadius: 24)
                .stroke(Color.white.opacity(0.1))
        )

        .animation(.easeInOut, value: isPesado)
    }
}

#Preview {
    ModoSelectionView()
}
