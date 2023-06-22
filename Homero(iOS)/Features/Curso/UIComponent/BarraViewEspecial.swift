//
//  BarraViewEspecial.swift
//  Homero(iOS)
//
//  Created by userext on 16/06/23.
//

import SwiftUI

struct BarraViewEspecial<Content: View>: View {
    var nomeimagem: String
    var text: String
  @ViewBuilder  var dentinatario: () -> Content
    var body: some View {
        VStack{
            HStack{
                ZStack{
                    Color("Bluedark")
                        .ignoresSafeArea()
                }.frame(maxWidth: 20,maxHeight: 70)
                    .cornerRadius(7)
                    .padding(.trailing)
               Image(nomeimagem)
                    .padding(.trailing)
                Text(text)
                    .padding(.trailing,100)
                    .foregroundColor(Color("Bluedark"))
                    .bold()
                Spacer()
                ZStack{
                    Color(.white)
                        .ignoresSafeArea()
                        
                }.frame(maxWidth: 20,maxHeight: 70)
                    .cornerRadius(7)
                    .padding(.leading)
                
            }.frame(width: .infinity)
        }
        .frame(maxWidth: 370,maxHeight: 70)
        .cornerRadius(10)
        .shadow(radius: 100)

            
    }
}

struct BarraViewEspecial_Previews: PreviewProvider {
    static var previews: some View {
        BarraViewEspecial(nomeimagem: "conteudo",text: "Conteúdo") {}
    }
}
