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
            modoAtual.color(estado: manager.estado)
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
                
                if manager.estado == .votando {
                    Text("TOTAL VOTOS")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                    
                    Text("\(manager.votosA + manager.votosB)")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                } else {
                    Text(modoAtual.emoji)
                        .font(.largeTitle)
                }
                
                if let pergunta = manager.perguntaAtual {
                    Text(pergunta.titulo)
                        .font(.system(size: 34, weight: .bold))
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal)
                    
                    if manager.estado != .revelando {
                        HStack(spacing: 16) {
                            OptionCard(label: "A", text: pergunta.opcaoA, estado: manager.estado, onTap: {
                                manager.tocarOpcao(.A)
                            })
                            OptionCard(label: "B", text: pergunta.opcaoB, estado: manager.estado, onTap: {
                                manager.tocarOpcao(.B)
                            })
                        }
                    } else {
                        HStack(spacing: 16) {
                            MostradorVotosCard(label: "A", votes: manager.votosA, estado: manager.estado, onTap: {
                                manager.estado = .votando
                            })
                            MostradorVotosCard(label: "B", votes: manager.votosB, estado: manager.estado, onTap: {
                                manager.estado = .votando
                            })
                        }
                    }
                    
                    if manager.estado == .votando {
                        VotacaoView(votosA: manager.votosA, votosB: manager.votosB, estado: manager.estado) {
                            manager.revelarVotos()
                        }
                    }
                    
                    Spacer()
                    
                    if manager.estado == .votando {
                        Button {
                            manager.revelarVotos()
                        } label: {
                            Text("Revelar Votos")
                                .font(.headline)
                                .foregroundColor(.black)
                                .frame(maxWidth: .infinity)
                                .padding()
                                .background(Color.white)
                                .cornerRadius(16)
                                .padding(.horizontal)
                        }
                    } else {
                        
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
                    }
                    
                } else {
                    Text("Nenhuma pergunta disponível 😅")
                        .foregroundColor(.white)
                        .font(.title2)
                        .multilineTextAlignment(.center)
                    Spacer()
                    Button {
                        manager.resetarJogo()
                    } label: {
                        Text("Recomeçar")
                            .font(.headline)
                            .foregroundColor(.black)
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color.white)
                            .cornerRadius(16)
                            .padding(.horizontal)
                    }

                }
            }
            .padding()
            
            if manager.mostrarTutorial && !manager.tutorialVisto || manager.mostrarTutorialIcon {
                VotacaoTutorialOverlay {
                    manager.fecharTutorial()
                }
                .toolbar(.hidden)
                .transition(.opacity)
                .zIndex(999)
            }
        }
        .toolbar {
            ToolbarItem(placement: .topBarTrailing) {
                Button {
                    manager.mostrarTutorialIcon = true
                } label: {
                    Image(systemName: "info.circle")
                        .foregroundColor(.white)
                }
            }
        }
        .onAppear {
            manager.mostrarTutorial = true
        }
    }
}


#Preview {
    ContentView(modo: .leve)
}


