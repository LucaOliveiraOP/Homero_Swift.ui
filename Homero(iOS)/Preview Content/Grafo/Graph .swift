

import Foundation

class Graph<T>: Equatable where T: Equatable, T: Hashable {
    var edges: [Edge<T>]
    var vertices: [Vertex<T>]

    init(vertices: [Vertex<T>] = [], edges: [Edge<T>] = []) {
        self.edges = edges
        self.vertices = vertices
    }

    subscript(index: Int) -> Vertex<T> {
        return vertices[index]
    }

    func createVertex(with data: T, labeled label: String? = nil) -> Vertex<T> {
        let vertex = Vertex(with: data, at: vertices.count, labeled: label)
        self.vertices.append(vertex)
        return vertex
    }

    func addEdge(from fromVertex: Vertex<T>, to toVertex: Vertex<T>,
                 with weight: Double = 0, isDirected: Bool = false) {
        let newEdge = Edge<T>(from: fromVertex, to: toVertex, with: weight, isDeirected: isDirected)
        self.edges.append(newEdge)
    }

    func remove(_ edge: Edge<T>) {
        self.edges.removeAll { $0 == edge }
    }

    func generateAdjacencyMatrix() -> [[Int]] {
        let line = Array(repeating: 0, count: vertices.count)
        var matrix = Array(repeating: line, count: vertices.count)

        for index in 0..<edges.count {
            let edge = edges[index]
            if edge.isDirected {
                matrix[edge.fromVertex.index][edge.toVertex.index] = 1
                matrix[edge.toVertex.index][edge.fromVertex.index] = -1
            } else {
                matrix[edge.fromVertex.index][edge.toVertex.index] = 1
                matrix[edge.toVertex.index][edge.fromVertex.index] = 1
            }
        }

        return matrix
    }

    func degree(of vertex: Vertex<T>) -> (entering: Int, leaving: Int) {
        var entering: Int = 0
        var leaving: Int = 0
        for edge in edges {
            if edge.fromVertex == vertex {
                leaving += 1
                if !edge.isDirected {
                    entering += 1
                }
            }
                
            if edge.toVertex == vertex {
                entering += 1
                if !edge.isDirected {
                    leaving += 1
                }
            }
        }

        return (entering, leaving)
    }

    func generateTopology() -> [Vertex<T>] {
        guard !edges.isEmpty,
              edges.allSatisfy({ $0.isDirected }),
              var currentVertex = self.vertices.randomElement()
        else { return vertices }

        var topology: [Vertex<T>] = []
        var verticesStack: [Vertex<T>] = []

        while !verticesStack.isEmpty || topology.count != vertices.count {
            let nextEdge = currentVertex.edgeList.first(where: { edge in
                return edge.fromVertex == currentVertex && !topology.contains(edge.toVertex)
            })

            if let nextEdge = nextEdge {
                verticesStack.append(currentVertex)
                currentVertex = nextEdge.toVertex
            } else {
                topology.append(currentVertex)
                if let lastInStack = verticesStack.last {
                    verticesStack.removeLast()
                    currentVertex = lastInStack
                } else if let nextVertex = vertices.first(where: { !topology.contains($0) }) {
                    currentVertex = nextVertex
                } else {
                    break
                }
            }
        }

        return topology
    }
}

extension Graph {
    static func == (lhs: Graph<T>, rhs: Graph<T>) -> Bool {
        return lhs.edges == rhs.edges && lhs.vertices == rhs.vertices
    }
}

extension Graph: CustomStringConvertible {
    var description: String {
        var str: String = ""

        let adjacencyMatrix = self.generateAdjacencyMatrix()

        for (index, line) in adjacencyMatrix.enumerated() {
            var lineString: String = ""
            for column in line {
                lineString.append("\(column)\t")
            }

            str.append("\(lineString)")
            str.append("v\(index + 1): \(vertices[index].label)\n")
        }

        let horizontalLabels: String = vertices.reduce("") { partialResult, vertext in
            return partialResult.appending("v\(vertext.index + 1) \t")
        }

        str.append(horizontalLabels)

        return str
    }
}

extension Graph {
    static func createGraph(withAdjacencyMatrix adjacencyMatrix: [[Int]]) -> Graph<Int>? {
        let graph = Graph<Int>()

        guard !adjacencyMatrix.isEmpty
        else { return nil }

        let numberOfVertices = adjacencyMatrix.count

        guard adjacencyMatrix.allSatisfy({ $0.count == numberOfVertices })
        else { return nil }

        // MARK: TODO - Create vertices and edges

        return graph
    }

    static func createGraph(withIncidenceMatrix incidenceMatrix: [[Int]]) -> Graph<Int>? {
        let graph = Graph<Int>()

        guard !incidenceMatrix.isEmpty
        else { return nil }

        let numberOfVertices = incidenceMatrix.count
        let numberOfEdges = incidenceMatrix.first!.count

        guard incidenceMatrix.allSatisfy({ $0.count == numberOfEdges })
        else { return nil }

        for index in 0..<numberOfVertices {
            _ = graph.createVertex(with: index)
        }

        for line in 0..<numberOfVertices {
            for column in 0..<numberOfEdges {
                if incidenceMatrix[line][column] == 1 && line < numberOfVertices {
                    for secondLine in (line + 1)..<numberOfVertices {
                        if incidenceMatrix[secondLine][column] == 1 && line != secondLine {
                            graph.addEdge(from: graph[line], to: graph[secondLine])
                            continue
                        }
                    }
                }
            }
        }

        return graph
    }
}
