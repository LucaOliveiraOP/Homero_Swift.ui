//
//  main.swift
//  GrafosDoSerra
//
//  Created by userext on 13/06/23.
//

class ObjetoAprendizado: Codable {
    var titulo1: [String] = []
    var descricao1: [String] = []
    var horariocont: [Int] = []
    var id: [Int] = []
    
    init(titulo1: [String], descricao1: [String], horariocont: [Int], id: [Int]){
            self.titulo1 = titulo1
            self.descricao1 = descricao1
            self.horariocont = horariocont
            self.id = id
        }
    func funcao1(){
          print("\(titulo1), \(descricao1)")
      }
  }
//new
class Objetivo_Aprendizagem {
    var titulo: String
    var carga_horaria_min: Int
    var trilha: String
    var descricao: String
    var pre_requisitos: [Int]
    var completo: Bool

    init(titulo: String, carga_horaria_min: Int, trilha: String, descricao: String, pre_requisitos: [Int], completo: Bool)    {
        self.titulo = titulo
        self.carga_horaria_min = carga_horaria_min
        self.trilha = trilha
        self.descricao = descricao
        self.pre_requisitos = pre_requisitos
        self.completo = completo
    }
    
    func funcao(){
        print("\(titulo), \(completo)")
    }
}

class Quiz {
    var perguntas: Pergunta
    var completo: Bool = false
    
    }

    
    
class Pergunta {
    var tituloperg: String = ""
    var alternativas: String = ""
    var respCerta: String = ""
    var correta: Bool = false
    
    }

//var objeto = ObjetoAprendizado(titulo1: <#T##[String]#>, descricao1: <#T##[String]#>, horariocont: <#T##[Int]#>, id: <#T##[Int]#>)
//
//



