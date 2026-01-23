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
        .padding()
        .frame(maxWidth: .infinity, minHeight: 140)
        .background(
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.white.opacity(0.1))
                .overlay(
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(
                            isPesado ? Color.red.opacity(0.8) : Color.white.opacity(0.2),
                            lineWidth: isPesado ? 2 : 1
                        )
                )
        )
        .animation(.easeInOut, value: isPesado)
    }
}
