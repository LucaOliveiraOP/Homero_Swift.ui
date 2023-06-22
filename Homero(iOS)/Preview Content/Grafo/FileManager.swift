//
//  FileManager.swift
//  Homero(iOS)
//
//  Created by userext on 20/06/23.
//

import Foundation


class FManager{
    
    static let fileManager = FileManager.default
    // static é pra acessar sem instanciar ("acesso global") n muda com instancia
    static  var documentsDirectory: URL {
        return FManager.fileManager.urls(for: .documentDirectory, in: .allDomainsMask).first!
    }
    static var jsonURL: URL {
        return FManager.documentsDirectory.appendingPathComponent("grafo.json")
        
        func decodar (){
            let decoder = JSONDecoder()
            do{
                let data = try Data(contentsOf: FManager.jsonURL)
                let objectDecode = try decoder.decode(ObjetoAprendizado.self, from: data)
//                self.pessoa.usuarios = objectDecode.usuarios
//                self.pessoa.senhas = objectDecode.senhas
//                self.pessoa.urls = objectDecode.urls
                //                let dado = try Data(contentsOf: ViewModel.jsonURL)
                //                let objectDecode = try decoder.decode(Pessoa.self, from: dado)
                //
                //                Pessoa.usuarios = objectDecode.usuarios
            } catch {
                print("Erro no JSON")
            }
        }
    }
}

