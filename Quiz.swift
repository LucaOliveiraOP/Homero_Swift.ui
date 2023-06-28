//
//  Quiz.swift
//  Homero(iOS)
//
//  Created by userext on 27/06/23.
//

import Foundation
class Quiz {
    var perguntas: [Pergunta]
    var completo: Bool = false
    init(perguntas: [Pergunta], completo: Bool) {
        self.perguntas = perguntas
        self.completo = completo
    }
}
