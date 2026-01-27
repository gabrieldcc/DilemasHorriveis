import SwiftUI

struct ContentView: View {
    @StateObject private var manager: DilemasViewModel
    @State private var modoPesado = false
    @State var modoAtual: ModoJogo

    
    init(modo: ModoJogo) {
        self.modoAtual = modo
        _manager = StateObject(wrappedValue: DilemasViewModel(modo: modo))
        if modo == .pesado {
            self._modoPesado = State(initialValue: true)
        }
    }

    var body: some View {
        ZStack {
            modoAtual.color()
                .ignoresSafeArea()

            VStack(spacing: 32) {
                
                VStack(spacing: 12) {

                    // Texto
                    Text("Pergunta \(manager.progressoTexto)")
                        .font(.caption)
                        .foregroundColor(.white.opacity(0.8))

                    // Barra
                    ProgressView(value: manager.progressoPercentual)
                        .progressViewStyle(LinearProgressViewStyle(tint: .white))
                        .animation(.easeInOut, value: manager.progressoPercentual)
                }
                .padding(.horizontal)

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
                    if modoAtual == .pesado || modoAtual == .leve {
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

                    HStack {
                        Button {
                            manager.perguntaAnterior()
                        } label: {
                            Text("VOLTAR")
                                .font(.headline)
                                .foregroundColor(.black)
                                .frame(maxWidth: .infinity)
                                .padding()
                                .background(Color.white)
                                .cornerRadius(16)
                                .padding(.horizontal)
                        }
                        
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
    ContentView(modo: .leve)
}


