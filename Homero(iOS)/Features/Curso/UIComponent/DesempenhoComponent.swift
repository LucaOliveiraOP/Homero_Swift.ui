//
//  DesempenhoComponent.swift
//  Homero(iOS)
//
//  Created by userext on 21/06/23.
//

import SwiftUI

struct DesempenhoComponent: View {
    var text: String
    var textdestaque: String
    
    var nameimage: String
    var body: some View {
        HStack{
            
            VStack{
                Text(text)
                    .foregroundColor(Color("Bluedark"))
                    .padding()
                    
                Text(textdestaque)
                    .foregroundColor(Color("Bluedark"))
                    .padding(.trailing,151)
                    .padding()
            }
            Spacer()
            Image(nameimage)
                .padding(.top,20)
            
        }.frame(maxWidth:370,maxHeight:100)
        .cornerRadius(7)
        .border(Color("Bluedark"))
        //deixar arredondado?
            
        
    }
}

struct DesempenhoComponent_Previews: PreviewProvider {
    static var previews: some View {
        DesempenhoComponent(text: "Média de acertos nos quizzes", textdestaque: "61%", nameimage: "Quiz")
    }
}
