//
//  Pergunta.swift
//  DilemasHorriveis
//
//  Created by Gabriel Castro on 22/01/26.
//

import Foundation

//struct Pergunta {
//    let titulo: String
//    let opcaoA: String
//    let opcaoB: String
//    let modo: ModoJogo
//}

struct Pergunta: Identifiable, Codable, Equatable {
    let id: UUID
    let titulo: String
    let opcaoA: String
    let opcaoB: String
    let modo: ModoJogo
    var starred: Bool

    init(
        titulo: String,
        opcaoA: String,
        opcaoB: String,
        modo: ModoJogo,
        starred: Bool = false
    ) {
        self.id = UUID()
        self.titulo = titulo
        self.opcaoA = opcaoA
        self.opcaoB = opcaoB
        self.modo = modo
        self.starred = starred
    }
}


