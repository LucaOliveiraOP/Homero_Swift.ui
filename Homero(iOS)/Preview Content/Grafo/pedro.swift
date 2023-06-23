
import Foundation



var graph = Graph<Int>()


let jsonDecoded: [Int] = Array(repeating: 0, count: 100)


//let content1 = graph.createVertex(with: 10, labeled: "PDF Aula 1 - Introdução")
//let content2 = graph.createVertex(with: 9, labeled: "PADF Aula 2 - GRafo Direcionado")
//graph.addEdge(from: content1, to: content2, isDirected: true)

struct Objective {
    let id: Int
    var isCompleted: Bool = false
    var requirements: [Int] = []
 }

//let objectives = decodar()


    



// map into a Dictionary

let objectives: [Int: Objective] = [
    0: Objective(id: 0, requirements: [1, 2]),
    1: Objective(id: 1, isCompleted: true, requirements: [2, 7]),
    2: Objective(id: 2, isCompleted: true, requirements: [3, 7]),
    3: Objective(id: 3, requirements: [5]),
    4: Objective(id: 4, requirements: [5]),
    5: Objective(id: 5, requirements: [4]),
    6: Objective(id: 6, requirements: [5]),
    7: Objective(id: 7)
]

var vertices: [Int: Vertex<Int>] = [:]

// map into a graph
for objective in objectives {
    let vertex = graph.createVertex(with: objective.value.id)
    vertices[objective.value.id] = vertex

    var graph = Graph<Int>()
    
    
    let jsonDecoded: [Int] = Array(repeating: 0, count: 100)
    
    
    //let content1 = graph.createVertex(with: 10, labeled: "PDF Aula 1 - Introdução")
    //let content2 = graph.createVertex(with: 9, labeled: "PADF Aula 2 - GRafo Direcionado")
    //
    //graph.addEdge(from: content1, to: content2, isDirected: true)
    
    struct Objective {
        let id: Int
        var isCompleted: Bool = false
        var requirements: [Int] = []
    }
    
    // let objectives = JOSONDecoder().decode(...)
    
    // map into a Dictionary
    
    let objectives: [Int: Objective] = [
        0: Objective(id: 0, requirements: [1, 2]),
        1: Objective(id: 1, isCompleted: true, requirements: [2, 7]),
        2: Objective(id: 2, isCompleted: true, requirements: [3, 7]),
        3: Objective(id: 3, requirements: [5]),
        4: Objective(id: 4, requirements: [5]),
        5: Objective(id: 5, requirements: [4]),
        6: Objective(id: 6, requirements: [5]),
        7: Objective(id: 7)
    ]
    
    var vertices: [Int: Vertex<Int>] = [:]
    
    // map into a graph
    for objective in objectives {
        let vertex = graph.createVertex(with: objective.value.id)
        vertices[objective.value.id] = vertex
    }
    
    for value in vertices {
        print(value)
    }
    
    // requirements mapping
    for objective in objectives.values {
        let objectiveVertex = vertices[objective.id]!
        for requirement in objective.requirements {
            let requirementVertex = vertices[requirement]!
            graph.addEdge(from: requirementVertex, to: objectiveVertex, isDirected: true)
        }
    }
    
    print(graph)
    print("\n\n\n\n\n")
    
    for edge in graph.edges {
        let from = edge.fromVertex
        let to = edge.toVertex
        
        print(from.data, "->", to.data)
    }
    
    
    
    
    let content = objectives[0]!
    var shouldShow = true
    
    for requirement in content.requirements {
        if !objectives[requirement]!.isCompleted {
            shouldShow = false
            break
        }
    }
    
    print("\n\n\n\nO usuário pode ver o Objeto 0? \(shouldShow)")
}
