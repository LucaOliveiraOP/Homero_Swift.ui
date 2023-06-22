//
//  CapView.swift
//  Homero(iOS)
//
//  Created by userext on 21/06/23.
//

import SwiftUI

struct CapView: View {
    var capitulo: String
    var body: some View {
        
        HStack{
            ZStack{
                
                Color("Bluedark")
                    .ignoresSafeArea()
                    .cornerRadius(5)
            }.frame(maxWidth: 12,maxHeight: 45)
            Text("Capítulo:")
                .foregroundColor(Color("Bluedark"))
            Text(capitulo)
                .foregroundColor(Color("Bluedark"))
                .bold()
        }
    }
}

struct CapView_Previews: PreviewProvider {
    static var previews: some View {
        CapView(capitulo: "Estrutura de dados básicas" )
    }
}
