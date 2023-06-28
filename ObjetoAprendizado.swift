import Foundation

class ObjetoAprendizado: Codable {
    var Nome: String
    var DescricaoObjeto: String
    var HorarioCont: Int
    var Id: Int
    var Link: String
    
    init(Nome: String, DescricaoObjeto: String, HorarioCont: Int, Id: Int, Link: String){
            self.Nome = Nome
            self.DescricaoObjeto = DescricaoObjeto
            self.HorarioCont = HorarioCont
            self.Id = Id
            self.Link = Link
        }
    func funcao1(){
          print("\(Nome), \(DescricaoObjeto)")
      }
  }
