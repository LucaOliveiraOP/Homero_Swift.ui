//
//  ProfileVie.swift
//  Homero(iOS)
//
//  Created by userext on 12/06/23.
//

import SwiftUI

struct ProfileVie: View {
    var name: String = "Nome do aluno"
    var body: some View {
        VStack{
            Rectangle()
                .overlay{
                    HStack{
                        Text("Conta")
                            .font(.title)
                            .foregroundColor(Color("Bluedark"))
                        Spacer()
                    }.padding()
                    
                }
                .foregroundColor(.white)
                .shadow(radius: 5)
                .frame(width: 392,height: 70)
                .padding(.top, 30)
            ImageView(nomedoavata: "HomeroAvata")
                .frame(maxHeight: 200)
                .padding(.top, 10)
            Text(name)
                .font(.title)
                .bold()
                .foregroundColor(Color("Bluedark"))
                .padding()
            Spacer()
            VStack{
                BarraView(texto: "Informações pessoais") {InformacoesView()}
                BarraView(texto: "Alterar senha"){ForgotPasswordVie()}
                BarraView(texto: "Histórico da aula") {HistoricoAulaView()}
                BarraView(texto: "Perguntas frequentes") {PerguntasFrequentes()}
            }.padding(.bottom, 45)
        }
    }
}

struct ProfileVie_Previews: PreviewProvider {
    static var previews: some View {
        ProfileVie()
    }
}
