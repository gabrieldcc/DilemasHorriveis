//
//  DilemasViewModel.swift
//  DilemasHorriveis
//
//  Created by Gabriel Castro on 22/01/26.
//
import SwiftUI

class DilemasViewModel: ObservableObject {
    @AppStorage("tutorialVisto") var tutorialVisto = false
    @Published var perguntaAtual: Pergunta?
    @Published var acabouPerguntas = false
    @Published var erroSemPerguntas = false
    @Published var indiceAtual: Int = 0
    @Published var estado: EstadoJogo = .pergunta
    @Published var votosA: Int = 0
    @Published var votosB: Int = 0
    @Published var mostrarAlertaVotacao = false
    @Published var alertaJaMostrado = false
    @Published var mostrarTutorial = true
    @Published var mostrarTutorialIcon = false
    private var modo: ModoJogo
    private var perguntasRestantes: [Pergunta] = []
    private var votoPendente: Opcao?
    
    var totalPerguntas: Int {
        perguntasRestantes.count
    }
    
    var progressoTexto: String {
        "\(indiceAtual + 1) de \(totalPerguntas)"
    }
    
    var progressoPercentual: Double {
        guard totalPerguntas > 0 else { return 0 }
        return Double(indiceAtual + 1) / Double(totalPerguntas)
    }
    
    var maisVotado: Opcao? {
        guard estado == .revelando else { return nil }

        if votosA == votosB { return nil }
        return votosA > votosB ? .A : .B
    }
    
    init(modo: ModoJogo) {
        self.modo = modo
        
        switch modo {
        case .leve:
            self.perguntasRestantes = PerguntasLeves.perguntas.shuffled()
        case .pesado:
            self.perguntasRestantes = PerguntasPesadas.perguntas.shuffled()
        case .nerd:
            self.perguntasRestantes = PerguntasNerd.perguntas.shuffled()
        case .culturaBR:
            self.perguntasRestantes = PerguntasCulturaBR.perguntas.shuffled()
        }
        
        if let primeira = perguntasRestantes.first {
            self.perguntaAtual = primeira
        } else {
            self.perguntaAtual = Pergunta(
                titulo: "Ops! Não há perguntas para este modo ainda.",
                opcaoA: "Voltar",
                opcaoB: "Sair",
                modo: modo
            )
        }
    }
    
    func tocarOpcao(_ opcao: Opcao) {
        registrarVoto(opcao)
    }

    func registrarVoto(_ opcao: Opcao) {
        estado = .votando

        switch opcao {
        case .A: votosA += 1
        case .B: votosB += 1
        }
    }
    
    func confirmarAlerta() {
        if let opcao = votoPendente {
            registrarVoto(opcao)
            votoPendente = nil
        }
    }

    func revelarVotos() {
        estado = .revelando
    }
    
    func fecharTutorial() {
        mostrarAlertaVotacao = false
        mostrarTutorialIcon = false
        mostrarTutorial = false
        tutorialVisto = true
    }
    
    func proximaPergunta() {
        resetarEstadoJogo()
        withAnimation(.spring()) {
            if perguntasRestantes.isEmpty {
                acabouPerguntas = true
            }
            
            guard indiceAtual + 1 < perguntasRestantes.count else {
                perguntaAtual = nil
                return
            }
            
            indiceAtual += 1
            perguntaAtual = perguntasRestantes[indiceAtual]
        }
    }
    
    private func resetarEstadoJogo() {
        estado = .pergunta
        votosA = 0
        votosB = 0
    }
    
    func perguntaAnterior() {
        resetarEstadoJogo()
        withAnimation(.spring()) {
            if perguntasRestantes.isEmpty {
                acabouPerguntas = true
            }
            
            guard indiceAtual - 1 >= 0 else {
                perguntaAtual = nil
                return
            }
            
            indiceAtual -= 1
            perguntaAtual = perguntasRestantes[indiceAtual]
        }
    }
    
    private func resetarPerguntas() {
        switch modo {
        case .leve:
            self.perguntasRestantes = PerguntasLeves.perguntas.shuffled()
        case .pesado:
            self.perguntasRestantes = PerguntasPesadas.perguntas.shuffled()
        case .nerd:
            self.perguntasRestantes = PerguntasNerd.perguntas.shuffled()
        case .culturaBR:
            self.perguntasRestantes = PerguntasCulturaBR.perguntas.shuffled()
        }
        acabouPerguntas = false
        indiceAtual = 0
        perguntaAtual = perguntasRestantes[indiceAtual]
    }
    
    func resetarJogo() {
        resetarPerguntas()
        acabouPerguntas = false
    }
    
    func atualizarModo(modo: ModoJogo) {
        self.modo = modo
        perguntasRestantes =  QuestionsManager.getAllQuestions()
            .filter { $0.modo == modo }
            .shuffled()
        resetarJogo()
    }
}
