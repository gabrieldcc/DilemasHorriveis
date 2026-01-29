//
//  OptionCard.swift
//  DilemasHorriveis
//
//  Created by Gabriel Castro on 22/01/26.
//

import UIKit
import SwiftUI

struct OptionCard: View {
    let label: String
    let text: String
    let estado: EstadoJogo
    let onTap: () -> Void
    @State private var isPressed = false

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
        .contentShape(Rectangle())
        .onTapGesture {
            onTap()
            feedback()
        }
        .padding()
        .frame(maxWidth: .infinity, minHeight: 140)
        .background(.ultraThinMaterial)
        .clipShape(RoundedRectangle(cornerRadius: 24))
        .overlay(
            RoundedRectangle(cornerRadius: 24)
                .stroke(isPressed ? Color.green : Color.white.opacity(0.1), lineWidth: 3)
        )

        .animation(.easeInOut, value: estado)
    }
    
    func hapticImpact(_ style: UIImpactFeedbackGenerator.FeedbackStyle) {
        let generator = UIImpactFeedbackGenerator(style: style)
        generator.prepare()
        generator.impactOccurred()
    }
    
    private func feedback() {
        isPressed = true
        UIImpactFeedbackGenerator(style: .heavy).impactOccurred()
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
            isPressed = false
        }
      }
}

#Preview {
    ModoSelectionView()
}
