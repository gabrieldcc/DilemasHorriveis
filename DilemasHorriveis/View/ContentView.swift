import SwiftUI

struct ContentView: View {
    @State private var modoPesado = false
    @StateObject private var manager: DilemasViewModel
    
//    let modoInicial: ModoJogo
    
    @State var modoAtual: ModoJogo

    
    init(modo: ModoJogo) {
        self.modoAtual = modo
        _manager = StateObject(wrappedValue: DilemasViewModel(modo: modo))
        if modo == .pesado {
            self._modoPesado = State(initialValue: true)
        }
    }

//    var modoAtual: ModoJogo {
//         if modoInicial == .nerd {
//             return .nerd
//         } else {
//             return modoPesado ? .pesado : .leve
//         }
//     }

    var body: some View {
        ZStack {
            modoAtual.gradient
                .ignoresSafeArea()

            VStack(spacing: 32) {
                Spacer()

           

                Text(modoAtual.emoji)
                    .font(.largeTitle)

                if let pergunta = manager.perguntaAtual {
                    Text(pergunta.titulo)
                        .font(.system(size: 34, weight: .bold))
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal)

                    HStack(spacing: 16) {
                        OptionCard(label: "A", text: pergunta.opcaoA, isPesado: modoPesado)
                        OptionCard(label: "B", text: pergunta.opcaoB, isPesado: modoPesado)
                    }
                    
                    // Toggle de pesado / leve
                    if modoAtual != .nerd {
                        Toggle(isOn: $modoPesado) {
                            Text("Modo pesado")
                                .foregroundColor(.white)
                                .font(.headline)
                        }
                        .toggleStyle(SwitchToggleStyle(tint: .red))
                        .padding(.horizontal)
                        .onChange(of: modoPesado) {
                            let novoModo: ModoJogo = modoPesado ? .pesado : .leve
                            modoAtual = novoModo
                            manager.atualizarModo(modo: novoModo)
                        }
                    }

                    Spacer()

                    Button {
                        manager.proximaPergunta()
                    } label: {
                        Text("PRÓXIMA")
                            .font(.headline)
                            .foregroundColor(.black)
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color.white)
                            .cornerRadius(16)
                            .padding(.horizontal)
                    }
                } else {
                    Text("Nenhuma pergunta disponível 😅")
                        .foregroundColor(.white)
                        .font(.title2)
                        .multilineTextAlignment(.center)
                    Spacer()
                }
            }
            .padding()
        }
        .alert("Acabaram as perguntas 😅",
               isPresented: $manager.acabouPerguntas) {
            Button("Recomeçar") {
                manager.resetarJogo()
            }
        }
    }
}


#Preview {
    ModoSelectionView()
}


