
import Foundation

//
//class Test {
//    var a: Int
//    lazy var b: Int = foo()
//
//    init(a: Int) {
//        self.a = a
//    }
//
//    func foo() {
//        print("qualquer coisa")
//    }
//}


/*
 1. alocar memória
 2. init
    2.1 preencher var a
 3. permitir chamadas de funções e inicializaçõa de variáveis lazy
 
 */
//
//func test() {
//    let t = Test(a: 10)
//}

var graph = Graph<Int>()




class GraphMapper {
    let jsonDecoded: [Int] = Array(repeating: 0, count: 100)
//    var X: Int
//
//    while X !=9 {
//        print ("Bem-vindo, desejas rodar o código?")
//        if var X = readLine(), let aux = Int(X){
//            if (X != 9) {
//                RequisitosDoConteudo()
//            }
//        }
//    }
    //
    //let content1 = graph.createVertex(with: 10, labeled: "PDF Aula 1 - Introdução")
    //let content2 = graph.createVertex(with: 9, labeled: "PADF Aula 2 - GRafo Direcionado")
    //graph.addEdge(from: content1, to: content2, isDirected: true)
    
    //    struct Objective {
    //        let id: Int
    //        var isCompleted: Bool = false
    //        var requirements: [Int] = []
    //    }
    //
    //let objectives = decodar()
    //    var Titulo: String
    //    var CargaHorariaMin: Int
    //    var Trilha: String
    //    var DescricaoObjetivo: String
    //    var Identificador: Int
    //    var PreRequisitos: [Int]
    //    var Completo: Bool
    //    var Objeto: [ObjetoAprendizado]
    
    // map into a Dictionary
    
    //    import Foundation
    //    class ObjetivoAprendizagem: Codable {
    //        var Titulo: String
    //        var CargaHorariaMin: Int
    //        var Trilha: String
    //        var DescricaoObjetivo: String
    //        var Identificador: Int
    //        var PreRequisitos: [Int]
    //        var Completo: Bool
    //        var Objeto: [ObjetoAprendizado]
    //
    //        init(Titulo: String, CargaHorariaMin: Int, Trilha: String, DescricaoObjetivo: String, Identificador: Int, PreRequisitos: [Int], Completo: Bool, Objeto: [ObjetoAprendizado] ) {
    //            self.Titulo = Titulo
    //            self.CargaHorariaMin = CargaHorariaMin
    //            self.Trilha = Trilha
    //            self.DescricaoObjetivo = DescricaoObjetivo
    //            self.Identificador = Identificador
    //            self.PreRequisitos = PreRequisitos
    //            self.Completo = Completo
    //            self.Objeto = Objeto
    //        }
    //
    //        func funcao(){
    //            print("\(Titulo), \(Completo)")
    //        }
    //    }
    
    
    let Objectives: [Int: ObjetivoAprendizagem] = [
        0: ObjetivoAprendizagem(Titulo: "Introdução a Programação", CargaHorariaMin: 20, Trilha: "Computação", DescricaoObjetivo: "Aprenda o básico da programação", Identificador: 0, PreRequisitos: [], Completo: false, Objeto: []),
        1: ObjetivoAprendizagem(Titulo: "POO", CargaHorariaMin: 10, Trilha: "Computação", DescricaoObjetivo: "Aprenda programação orientada a objetos e seus conceitos", Identificador: 1, PreRequisitos: [0], Completo: false, Objeto: []),
        2: ObjetivoAprendizagem(Titulo: "Estrutura de Dados", CargaHorariaMin: 10, Trilha: "Computação", DescricaoObjetivo: "Aprenda as principais estruturas do mercado", Identificador: 2, PreRequisitos: [1,0], Completo: false, Objeto: [])
    ]
    
    var vertices: [Int: Vertex<Int>] = [:]
    
    // map into a graph
    func CreateVertex(){
        for objective in Objectives {
            let vertex = graph.createVertex(with: objective.value.Identificador)
            vertices[objective.value.Identificador] = vertex
        }
    }
    
    
    //    for value in vertices {
    //        print(value)
    //    }
    
    // requirements mapping
    func MapaRequisitos(){
        for objective in Objectives.values {
            let objectiveVertex = vertices[objective.Identificador]!
            for PreRequisitos in objective.PreRequisitos {
                let requirementVertex = vertices[PreRequisitos]!
                graph.addEdge(from: requirementVertex, to: objectiveVertex, isDirected: true)
            }
        }
        
    }
    //
    //    print(graph)
    //    print("\n\n\n\n\n")
    
    
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
    
    // RequisitosDoConteudo()


}

