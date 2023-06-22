//
//  DesempenhoView.swift
//  Homero(iOS)
//
//  Created by userext on 21/06/23.
//

import SwiftUI

struct DesempenhoView: View {
    var namecurse: String = "Estrutura de dados"
    var body: some View {
        
        ScrollView{
        VStack{
            
                Text(namecurse)
                    .font(.title)
                    .foregroundColor(Color("Bluedark"))
                    .padding(.top,-10)
                    .padding(.trailing,70)
                Divider()
                    .frame(width: .infinity,height:5)
                    .foregroundColor(Color("Bluedark"))
                    .padding(.top,-12)
                DesempenhoComponent(text: "Média de acerto nos quizzes", textdestaque: "20%", nameimage: "Quiz")
                DesempenhoComponent(text: "Objetivos de apredizagem finalizados", textdestaque: "1 Objetivo", nameimage:"Finalizado")
                Text("Histórico no quiz")
                    .foregroundColor(Color("Bluedark"))
                    .padding(.trailing,200)
            CapView(capitulo:  "Estrutura de dados básicas")
            HStack{
                Component(texto:"Objetivo de aprendizagem:" )
                Component(texto:"Percentual de acertos:" )
                Component(texto:"Status:" )
            }.padding()
                .frame(minHeight: 100)
            VStack{
                InfoView(texto: "Introdução a estrutura de dados", porcentos: "80%", verde: true)
                InfoView(texto: "Critérios de estrutura de dados", porcentos: "42%", verde: false)
                InfoView(texto: "Introdução a estrutura de dados", porcentos: "80%", verde: true)
                InfoView(texto: "Critérios de estrutura de dados", porcentos: "42%", verde: false)
            }
            }
        }
    }
    
}

struct DesempenhoView_Previews: PreviewProvider {
    static var previews: some View {
        DesempenhoView()
    }
}
