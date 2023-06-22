//
//  Component.swift
//  Homero(iOS)
//
//  Created by userext on 21/06/23.
//

import SwiftUI

struct Component: View {
    var texto: String
    var body: some View {
        Rectangle()
            .overlay{
                Text(texto)
                    .foregroundColor(Color("Bluedark"))
                    //.frame(maxWidth: .infinity)
                  //                     .lineLimit(nil)
            }
            .foregroundColor(.white)
          //  .frame(maxWidth: .infinity,maxHeight: .infinity)
            
    }
}

struct Component_Previews: PreviewProvider {
    static var previews: some View {
        Component(texto: "Objetivo de aprendizagem:")
    }
}
