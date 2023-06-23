//
//  InfoView.swift
//  Homero(iOS)
//
//  Created by userext on 21/06/23.
//

import SwiftUI

struct InfoView: View {
    var texto: String
    var porcentos: String
    var verde: Bool
    var body: some View {
        HStack(spacing:32){
            
            Text(texto)
                .foregroundColor(Color("Bluedark"))
            Text(porcentos)
                .foregroundColor(Color("Bluedark"))
            if verde{
                Image("verde")
            }
            else{
                Image("erro")
            }
        }
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(texto: "introdução a lista encadeada", porcentos: "80%", verde: true)
    }
}
