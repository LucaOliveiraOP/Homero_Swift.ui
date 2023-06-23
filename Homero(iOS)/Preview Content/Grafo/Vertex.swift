

import Foundation

class Vertex<T>: Equatable, Hashable where T: Equatable, T: Hashable {
    let identifier: UUID = UUID()

    let index: Int
    var data: T
    var label: String

    var edgeList: [Edge<T>] = []

    init(with data: T, at index: Int, labeled label: String? = nil) {
        self.data = data
        self.index = index
        self.label = label ?? "\(data)"
    }

    func hash(into hasher: inout Hasher) {
        hasher.combine(self.identifier)
    }
}

extension Vertex {
    static func == (lhs: Vertex<T>, rhs: Vertex<T>) -> Bool {
        return  lhs.data == rhs.data &&
                lhs.index == rhs.index &&
                lhs.label == rhs.label
    }
}

extension Vertex: CustomStringConvertible {
    var description: String { return "v\(index + 1):  \(label)" }
}
