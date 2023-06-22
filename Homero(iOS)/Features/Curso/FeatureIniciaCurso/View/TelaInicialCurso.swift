//
//  ProfileVie.swift
//  Homero(iOS)
//
//  Created by userext on 12/06/23.
//

import SwiftUI

struct TelainicialVie: View {
    var name: String = "Nome do aluno"
    var body: some View {
        VStack{
                Text("Estrutura de Dados")
                    .font(.title)
                    .foregroundColor(Color("Bluedark"))
                    .padding(.leading, -100)
            
                 LinearGradient(
                    gradient: Gradient(colors: [Color("Bluedark"), Color.white]),
                                        startPoint: .top,
                                        endPoint: .bottom
                 )
                 .frame(width: 400, height: 4)
                .foregroundColor(Color("Bluedark"))
                .padding(.top, -10)
                
            Image("HomeroAvata")
                .frame(maxHeight: 100)
                .padding(.top, 30)
            
            Text("Olá! Eu sou o Homero e serei o seu guia no curso.")
                .bold()
                .foregroundColor(Color("Bluedark"))
                .padding()
                .multilineTextAlignment(.center)

            Text("Nesse capítulo, você verá sobre: Estrutura de dados básicas, como vetores, matrizes, listas, pilhas, filas e árvores. Discutiremos suas operacoes, complexidades e aplicacoes. Também abordaremos alocacao dinamica de memória e a importancia de escolher a estrutura certa para resolver problemas de forma eficiente.")
                .padding(.top, -1)
                .padding(.horizontal)
                .foregroundColor(Color("Bluedark"))
            
            NavigationLink(destination: LoginView()) {
                Text("Iniciar Curso")
                
            }
            .frame(width: 275, height: 40)
            .background(Color("Bluedark"))
            .foregroundColor(.white)
            .cornerRadius(5)
            .padding(.top, 30)
            Spacer()
        }
    }
}

struct TelaInicialVie_Previews: PreviewProvider {
    static var previews: some View {
        TelainicialVie()
    }
}
