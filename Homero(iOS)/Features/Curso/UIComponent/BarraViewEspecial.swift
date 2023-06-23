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
  @ViewBuilder  var destinatario: () -> Content
    var body: some View {
        NavigationStack{
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
                    NavigationLink(destination: destinatario){
                        Text(text)
                            .padding(.trailing,100)
                            .foregroundColor(Color("Bluedark"))
                            .bold()
                    }
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
            .border(Color("Bluedark"))
            
            
        }
    }
}

struct BarraViewEspecial_Previews: PreviewProvider {
    static var previews: some View {
        BarraViewEspecial(nomeimagem: "conteudo",text: "Conteúdo") {}
    }
}
