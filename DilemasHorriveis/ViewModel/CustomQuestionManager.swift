//
//  CustomQuestionManager.swift
//  DilemasHorriveis
//
//  Created by Gabriel Castro on 30/01/26.
//

import Foundation

class CustomQuestionsManager {

    static let shared = CustomQuestionsManager()

    private let key = "custom_questions"

    private init() {}

    func load() -> [Pergunta] {
        guard let data = UserDefaults.standard.data(forKey: key),
              let decoded = try? JSONDecoder().decode([Pergunta].self, from: data)
        else {
            return []
        }

        return decoded
    }

    func save(_ questions: [Pergunta]) {
        if let data = try? JSONEncoder().encode(questions) {
            UserDefaults.standard.set(data, forKey: key)
        }
    }

    func add(_ pergunta: Pergunta) {

        var all = load()

        if !all.contains(where: { $0.id == pergunta.id }) {
            all.append(pergunta)
            save(all)
        }
    }
    
    func remove(_ pergunta: Pergunta) {

        var all = load()

        all.removeAll { $0.id == pergunta.id }

        save(all)
    }

    func update(_ pergunta: Pergunta) {
        var all = load()

        if let index = all.firstIndex(where: { $0.id == pergunta.id }) {
            all[index] = pergunta
        }

        save(all)
    }
    
    func isFavorita(_ pergunta: Pergunta) -> Bool {
        load().contains(where: { $0.id == pergunta.id })
    }

}
