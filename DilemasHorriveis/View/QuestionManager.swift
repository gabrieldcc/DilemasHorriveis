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
    private let modo: ModoJogo
    private var perguntasRestantes: [Pergunta] = []
 


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
        }
        if perguntasRestantes.isEmpty {
            acabouPerguntas = true
        }
    }
    
    private func resetarPerguntas() {
        perguntasRestantes =  QuestionsManager.getAllQuestions()
                   .filter { $0.modo == modo }
                   .shuffled()

               perguntaAtual = perguntasRestantes.removeFirst()
               acabouPerguntas = false
        }
    
    func resetarJogo() {
           resetarPerguntas()
           perguntaAtual = perguntasRestantes.removeFirst()
           acabouPerguntas = false
       }
    
    func atualizarModo(modo: ModoJogo) {
        perguntasRestantes =  QuestionsManager.getAllQuestions()
            .filter { $0.modo == modo }
            .shuffled()

        if let primeira = perguntasRestantes.first {
            perguntaAtual = primeira
            perguntasRestantes.removeFirst()
            acabouPerguntas = false
        } else {
            perguntaAtual = nil
            acabouPerguntas = true
        }
    }
}
