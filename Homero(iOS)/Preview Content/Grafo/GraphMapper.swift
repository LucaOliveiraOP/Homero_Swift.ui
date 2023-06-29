
import Foundation

var graph = Graph<Int>()




class GraphMapper {
    let jsonDecoded: [Int] = Array(repeating: 0, count: 100)
    
    
    let Objectives: [Int: ObjetivoAprendizagem] = [
        0: ObjetivoAprendizagem(Titulo: "Introdução a Programação", CargaHorariaMin: 20, Trilha: "Computação", DescricaoObjetivo: "Aprenda o básico da programação", Identificador: 0, PreRequisitos: [], Completo: false, Objeto: []),
        1: ObjetivoAprendizagem(Titulo: "POO", CargaHorariaMin: 10, Trilha: "Computação", DescricaoObjetivo: "Aprenda programação orientada a objetos e seus conceitos", Identificador: 1, PreRequisitos: [0], Completo: false, Objeto: []),
        2: ObjetivoAprendizagem(Titulo: "Estrutura de Dados", CargaHorariaMin: 10, Trilha: "Computação", DescricaoObjetivo: "Aprenda as principais estruturas do mercado", Identificador: 2, PreRequisitos: [1,0], Completo: false, Objeto: [])
    ]
    
    var vertices: [Int: Vertex<Int>] = [:]

    func CreateVertex(){
        for objective in Objectives {
            let vertex = graph.createVertex(with: objective.value.Identificador)
            vertices[objective.value.Identificador] = vertex
        }
    }
    

    func MapaRequisitos(){
        for objective in Objectives.values {
            let objectiveVertex = vertices[objective.Identificador]!
            for PreRequisitos in objective.PreRequisitos {
                let requirementVertex = vertices[PreRequisitos]!
                graph.addEdge(from: requirementVertex, to: objectiveVertex, isDirected: true)
            }
        }
        
    }
    
    
    func NoDoGrafo(){
        for edge in graph.edges {
            let from = edge.fromVertex
            let to = edge.toVertex
            
            print(from.data, "->", to.data)
        }
    }
    
    
    
    
    lazy var content = Objectives[0]
    var shouldShow = true
    
    
    func RequisitosDoConteudo(){
        for requirement in content!.PreRequisitos {
            if !Objectives[requirement]!.Completo {
                shouldShow = false
                break
            }
        }
        
        
        
        print("\n\n\n\nO usuário pode ver o Objeto 0? \(shouldShow)")
        
    }

}

