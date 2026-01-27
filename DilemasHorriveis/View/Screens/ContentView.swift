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
                    
                    Text("Pergunta \(manager.progressoTexto)")
                        .font(.caption)
                        .foregroundColor(.white.opacity(0.8))
                    
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
                        OptionCard(label: "A", text: pergunta.opcaoA, isPesado: modoPesado, onTap: {
                            manager.tocarOpcao(.A)
                        })
                        OptionCard(label: "B", text: pergunta.opcaoB, isPesado: modoPesado, onTap: {
                            manager.tocarOpcao(.B)
                        })
                    }
                    
                    if manager.estado == .votando {
                        VotacaoView(votosA: manager.votosA, votosB: manager.votosB, estado: manager.estado) {
                            manager.revelarVotos()
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
            
            if manager.mostrarAlertaVotacao {
                VotacaoTutorialOverlay {
                    manager.fecharTutorial()
                }
                .zIndex(10)
            }
            
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


