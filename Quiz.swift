import Foundation
class Quiz {
    var perguntas: [Pergunta]
    var completo: Bool = false
    init(perguntas: [Pergunta], completo: Bool) {
        self.perguntas = perguntas
        self.completo = completo
    }
}
