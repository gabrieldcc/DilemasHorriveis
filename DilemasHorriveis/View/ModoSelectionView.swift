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
                LinearGradient(
                    colors: [.black, .gray.opacity(0.7)],
                    startPoint: .top,
                    endPoint: .bottom
                )
                .ignoresSafeArea()

                VStack(spacing: 24) {
                    Spacer()

                    Text("Dilemas Horríveis")
                        .font(.largeTitle)
                        .fontWeight(.black)
                        .foregroundColor(.white)

                    Text("Escolha o modo")
                        .font(.headline)
                        .foregroundColor(.white.opacity(0.7))

                    Spacer()

                    VStack(spacing: 16) {
                        ForEach(ModoJogo.allCases) { modo in
                            NavigationLink {
                                ContentView(modo: modo)
                                    .navigationBarBackButtonHidden(true)
                                    .toolbar {
                                        ToolbarItem(placement: .navigationBarLeading) {
                                            Button("Voltar") {
                                            }
                                            .foregroundColor(.white) 
                                        }
                                    }
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
