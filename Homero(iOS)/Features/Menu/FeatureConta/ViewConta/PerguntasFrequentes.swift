//
//  ProfileVie.swift
//  Homero(iOS)
//
//  Created by userext on 12/06/23.
//

import SwiftUI

struct PerguntasFrequentes: View {
    var body: some View {
        VStack(alignment: .leading){
            Text("Perguntas Frequentes")
                .font(.title)
                .foregroundColor(Color("Bluedark"))
                .padding()
            
            LinearGradient(
                gradient: Gradient(colors: [Color("Bluedark"), Color.white]),
                startPoint: .top,
                endPoint: .bottom
            )
            .frame(width: 400, height: 4)
            .foregroundColor(Color("Bluedark"))
            
            VStack(spacing: 1){
                BarraView(texto: "Como recebo o meu certificado de conclusão de curso?") {}
                BarraView(texto: "Como posso acessar o fórum?"){}
                BarraView(texto: "como denunciar um tópico?") {}
                BarraView(texto: "Desejo excluir a minha, como faço?") {}
                BarraView(texto: "Possuo outra dúvida, como posso entrar em contato?") {}
            }
            Spacer()
        }
    }
    
    struct PerguntasFrequentes_Previews: PreviewProvider {
        static var previews: some View {
            PerguntasFrequentes()
        }
    }
}
