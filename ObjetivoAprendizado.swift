import Foundation
class ObjetivoAprendizagem: Codable {
    var Titulo: String
    var CargaHorariaMin: Int
    var Trilha: String
    var DescricaoObjetivo: String
    var Identificador: Int
    var PreRequisitos: [Int]
    var Completo: Bool
    var Objeto: [ObjetoAprendizado]
    
    init(Titulo: String, CargaHorariaMin: Int, Trilha: String, DescricaoObjetivo: String, Identificador: Int, PreRequisitos: [Int], Completo: Bool, Objeto: [ObjetoAprendizado] ) {
        self.Titulo = Titulo
        self.CargaHorariaMin = CargaHorariaMin
        self.Trilha = Trilha
        self.DescricaoObjetivo = DescricaoObjetivo
        self.Identificador = Identificador
        self.PreRequisitos = PreRequisitos
        self.Completo = Completo
        self.Objeto = Objeto
    }
    
    func funcao(){
        print("\(Titulo), \(Completo)")
    }
}
