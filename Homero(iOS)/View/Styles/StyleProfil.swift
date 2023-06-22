//
//  StyleProfil.swift
//  Homero(iOS)
//
//  Created by userext on 01/06/23.
//

import SwiftUI

struct StyleProfil: View {
    
    
    
    var body: some View {
        Rectangle()
                .overlay{
                    HStack{
                        Text("alouu")
                            .padding(.leading)
                        Image(systemName: "arrowshape.turn.up.right")
                            .padding(.trailing)
                    }
                    
                }
        }
    }


struct StyleProfil_Previews: PreviewProvider {
    static var previews: some View {
        StyleProfil()
    }
}
