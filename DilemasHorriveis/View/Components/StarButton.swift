//
//  StarButton.swift
//  DilemasHorriveis
//
//  Created by Gabriel Castro on 30/01/26.
//

import SwiftUI

struct StarButton: View {

//    @Binding var isStarred: Bool
    var isFavorita: Bool
    var onTap: ()-> Void

    var body: some View {

        Button {
//            isFavorita.toggle()
            onTap()
        } label: {

            Image(systemName: isFavorita ? "star.fill" : "star")
                .font(.title2)
                .foregroundColor(isFavorita ? .yellow : .white.opacity(0.6))
                .scaleEffect(isFavorita ? 1.2 : 1)
                .animation(.spring(), value: isFavorita)
        }
    }
}
