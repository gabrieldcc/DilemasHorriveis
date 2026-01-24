//
//  ModoSelectionView.swift
//  DilemasHorriveis
//
//  Created by Gabriel Castro on 23/01/26.
//

import SwiftUI

struct ModoSelectionView: View {
    var body: some View {
        NavigationStack {
            ZStack {
               
                DilemaColors.blackBase
                .ignoresSafeArea()

                VStack(spacing: 24) {
                    Spacer()

                    Text("Dilemas Horríveis")
                        .font(.largeTitle)
                        .fontWeight(.black)
                        .foregroundColor(DilemaColors.orangePrimary.opacity(0.8))

                    Text("Escolha o modo")
                        .font(.headline)
                        .foregroundColor(.white.opacity(0.7))

                    Spacer()

                    VStack(spacing: 16) {
                        ForEach(ModoJogo.allCases) { modo in
                            NavigationLink {
                                ContentView(modo: modo)
                            } label: {
                                ModoCard(modo: modo)
                            }
                        }
                    }

                    Spacer()
                }
                .padding()
            }
        }
    }
}

#Preview {
    ModoSelectionView()
}

