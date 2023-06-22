//
//  IniciarcursoView.swift
//  Homero(iOS)
//
//  Created by userext on 20/06/23.
//

import SwiftUI

struct IniciarcursoView: View {
    var namecurse: String = "Estrutura de dados"
    var body: some View {
        NavigationStack{
            VStack(spacing:10){
                Text(namecurse)
                    .font(.title)
                    .foregroundColor(Color("Bluedark"))
                    .padding(.top,-132)
                    .padding(.trailing,70)
                Divider()
                    .frame(width: .infinity,height:5)
                    .foregroundColor(Color("Bluedark"))
                    .padding(.top,-102)
                
                ImageView(nomedoavata: "HomeroAvata")
                    .frame(width: 100,height: 7)
                    .padding(.bottom,100)
                VStack{
                    Text("Olá,Gabriel! Eu sou o Homero e serei")
                        .foregroundColor(Color("Bluedark"))
                        .bold()
                    Text("o seu guia nesse curso")
                        .foregroundColor(Color("Bluedark"))
                        .bold()
                    
                    Text("Nesse capítulo, você verá sobre: Estrutura de dados básicas, como vetores, matrizes, listas, pilhas, filas e árvores. Discutiremos suas operacoes, complexidades e aplicacoes. Também abordaremos alocacao dinamica de memória e a importancia de escolher a estrutura certa para resolver problemas de forma eficiente")
                        .foregroundColor(Color("Bluedark"))
                        .padding(.horizontal)
                }.padding(.bottom,100)
                
                NavigationLink("Iniciar curso",destination: ComofuncionaView())
                    .frame(maxWidth: 275,maxHeight: 33)
                    .foregroundColor(.white)
                    .background(Color("Bluedark"))
                    .cornerRadius(2)
                
            }
        }
    }
}

struct IniciarcursoView_Previews: PreviewProvider {
    static var previews: some View {
        IniciarcursoView()
    }
}
