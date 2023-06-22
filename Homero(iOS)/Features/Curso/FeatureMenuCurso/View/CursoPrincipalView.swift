//
//  CursoPrincipalView.swift
//  Homero(iOS)
//
//  Created by userext on 15/06/23.
//

import SwiftUI

struct CursoPrincipalView: View {
    var body: some View {
        VStack(spacing: 20){
            Text("Todos os cursos")
                .padding(.trailing,137)
                .foregroundColor(Color("Bluedark"))
                .frame(width: .infinity)
                .font(.title)
                .lineLimit(1)
                

            Divider()
                .overlay{
                    LinearGradient(gradient: Gradient(colors: [Color("Bluedark"),.white]),startPoint: .top,endPoint: .bottom)
                }
                .padding(.bottom)
                .frame(height: 4)
            Textcurse(curso: "Estrutura de dados")
            BarraViewEspecial(nomeimagem: "conteudo", text:"Conteúdo"){}
            BarraViewEspecial(nomeimagem: "desempenho", text:"Meu desempenho"){}
            BarraViewEspecial(nomeimagem: "howfunciona", text: "Como funciona"){}
            BarraViewEspecial(nomeimagem: "sobrecurso", text: "Sobre o curso"){}
            Spacer()
        }
    }
}

struct CursoPrincipalView_Previews: PreviewProvider {
    static var previews: some View {
        CursoPrincipalView()
    }
}
