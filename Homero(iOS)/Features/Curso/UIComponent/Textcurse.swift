//
//  Textcurse.swift
//  Homero(iOS)
//
//  Created by userext on 16/06/23.
//

import SwiftUI

struct Textcurse: View {
    var curso: String
    var body: some View {
        VStack{
            Text(curso)
                .bold()
                .foregroundColor(Color("Bluedark"))
                .padding(.horizontal)
                .font(.title)
      }.frame(maxWidth: 370,maxHeight: 70)
        
    }
}

struct Textcurse_Previews: PreviewProvider {
    static var previews: some View {
        Textcurse(curso: "Estrutura de dados")
    }
}
