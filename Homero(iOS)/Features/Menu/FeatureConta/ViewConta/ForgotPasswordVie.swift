////
//  InformaçõesView.swift
//  Homero(iOS)
//
//  Created by userext on 13/06/23.
//

import SwiftUI

struct ForgotPasswordVie: View {
    @StateObject var informacoes = ProfileViewModel()
    var body: some View {
        VStack(spacing:10){
            VStack{
                HStack{
                    Text("Alterar senha")
                        .font(.title)
                        .foregroundColor(Color("Bluedark"))
                        .frame(width: .infinity)
                    Spacer()
                }.padding()
                Divider()
                    .shadow(radius: 5)
                    .frame(width: .infinity)
                
                Spacer()
            }.padding()
                .frame(maxHeight: 100)
            
            VStack{
                
                ForgotPasswordSecureVie(type: .atual)
                ForgotPasswordSecureVie(type: .nova)
                ForgotPasswordSecureVie(type: .confirmar)
            }
            Spacer()
            Button("Atualizar"){
            
            }.frame(maxWidth: 370,maxHeight: 50)
                .border(Color("Bluedark"))
                .foregroundColor(.white)
                .background(Color("Bluedark"))
                .cornerRadius(10)
            Spacer(minLength: 400)
        }
        
    }
    
    struct ForgotPasswordViePreviews: PreviewProvider {
        static var previews: some View {
            ForgotPasswordVie()
        }
    }
}
