//
//  ModoCard.swift
//  DilemasHorriveis
//
//  Created by Gabriel Castro on 23/01/26.
//

import SwiftUI

struct ModoCard: View {
    let modo: ModoJogo

    var body: some View {
        ZStack {
//            modo.color

            HStack {
                Text(modo.emoji)
                    .font(.system(size: 42))

                Text(modo.titulo.uppercased())
                    .font(.title2)
                    .fontWeight(.black)
                    .foregroundColor(.white)

                Spacer()
            }
            .padding()
        }
        .frame(height: 80)
        .cornerRadius(20)
        .overlay(
            RoundedRectangle(cornerRadius: 20)
                .stroke(modo.color(isBorder: true), lineWidth: 1)
        )
    }
}
