//
//  QuestionsManager.swift
//  DilemasHorriveis
//
//  Created by Gabriel Castro on 23/01/26.
//

class QuestionsManager {
        
    static func getAllQuestions() -> [Pergunta] {
        return PerguntasNerd.perguntas + PerguntasPesadas.perguntas + PerguntasLeves.perguntas
    }
    
    static func filtrarPor(modo: ModoJogo) -> [Pergunta] {
        getAllQuestions().filter { $0.modo == modo }
    }
    
}
