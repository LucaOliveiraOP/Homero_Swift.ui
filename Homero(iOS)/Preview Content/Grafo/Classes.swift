//
//  main.swift
//  GrafosDoSerra
//
//  Created by userext on 13/06/23.
//
class SerraData: Codable {
    var objetivos: [Objetivo_Aprendizagem] = []
    var objetos: [ObjetoAprendizado] = []
}

class ObjetoAprendizado: Codable {
    var nome: String
    var descricaoObjeto: String
    var horariocont: Int
    var id: Int
    var link: String
    
    init(nome: String, descricaoObjeto: String, horariocont: Int, id: Int, link: String){
            self.nome = nome
            self.descricaoObjeto = descricaoObjeto
            self.horariocont = horariocont
            self.id = id
            self.link = link
        }
    func funcao1(){
          print("\(nome), \(descricaoObjeto)")
      }
  }
//new
class Objetivo_Aprendizagem: Codable {
    var titulo: String
    var carga_horaria_min: Int
    var trilha: String
    var descricao_objetivo: String
    var identificador: Int
    var pre_requisitos: [Int]
    var completo: Bool
    var objeto: [ObjetoAprendizado]
    
    init(titulo: String, carga_horaria_min: Int, trilha: String, descricao_objetivo: String, identificador: Int, pre_requisitos: [Int], completo: Bool, objeto: [ObjetoAprendizado] ) {
        self.titulo = titulo
        self.carga_horaria_min = carga_horaria_min
        self.trilha = trilha
        self.descricao_objetivo = descricao_objetivo
        self.identificador = identificador
        self.pre_requisitos = pre_requisitos
        self.completo = completo
        self.objeto = objeto
    }
    
    func funcao(){
        print("\(titulo), \(completo)")
    }
}

class Quiz {
    var perguntas: [Pergunta]
    var completo: Bool = false
    init(perguntas: [Pergunta], completo: Bool) {
        self.perguntas = perguntas
        self.completo = completo
    }
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

// pedro



