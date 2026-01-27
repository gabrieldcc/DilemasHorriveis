//
//  DilemasViewModel.swift
//  DilemasHorriveis
//
//  Created by Gabriel Castro on 22/01/26.
//
import SwiftUI

class DilemasViewModel: ObservableObject {
    @Published var perguntaAtual: Pergunta?
    @Published var acabouPerguntas = false
    @Published var erroSemPerguntas = false
    @Published var indiceAtual: Int = 0
    private var modo: ModoJogo
    private var perguntasRestantes: [Pergunta] = []
    
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
    


    init(modo: ModoJogo) {
        self.modo = modo
        
        // Seleciona as perguntas pelo modo
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
        
        // Inicializa a primeira pergunta de forma segura
        if let primeira = perguntasRestantes.first {
            self.perguntaAtual = primeira
            perguntasRestantes.removeFirst()
        } else {
            // Caso não haja perguntas, cria uma pergunta genérica
            self.perguntaAtual = Pergunta(
                titulo: "Ops! Não há perguntas para este modo ainda.",
                opcaoA: "Voltar",
                opcaoB: "Sair",
                modo: modo
            )
        }
    }

    func proximaPergunta() {
        withAnimation(.spring()) {
            perguntaAtual =  QuestionsManager.getAllQuestions().randomElement()!
            switch modo {
            case .leve:
                perguntaAtual = PerguntasLeves.perguntas.randomElement()
            case .pesado:
                perguntaAtual = PerguntasPesadas.perguntas.randomElement()
            case .nerd:
                perguntaAtual = PerguntasNerd.perguntas.randomElement()
            case .culturaBR:
                perguntaAtual = PerguntasCulturaBR.perguntas.randomElement()
            }
        }
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
    
    private func resetarPerguntas() {
        perguntasRestantes =  QuestionsManager.getAllQuestions()
            .filter { $0.modo == modo }
            .shuffled()
        
        perguntaAtual = perguntasRestantes.removeFirst()
        acabouPerguntas = false
        indiceAtual = 0
    }
    
    func resetarJogo() {
           resetarPerguntas()
           perguntaAtual = perguntasRestantes.removeFirst()
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
