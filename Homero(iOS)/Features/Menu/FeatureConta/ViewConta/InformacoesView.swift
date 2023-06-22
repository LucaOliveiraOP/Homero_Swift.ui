//
//  InformaçõesView.swift
//  Homero(iOS)
//
//  Created by userext on 13/06/23.
//

import SwiftUI

struct InformacoesView: View {
    @StateObject var informacoes = ProfileViewModel()
    var body: some View {
        VStack(spacing:10){
            VStack{
                HStack{
                    Text("Informações pessoais")
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
                Textfieldprofile(write: .namewrite)
                Textfieldprofile(write: .nascimentowrite)
                Textfieldprofile(write: .cpfwrite)
            }
            Spacer()
            Button("Atualizar"){
            
            }.frame(maxWidth: 370,maxHeight: 50)
                .border(Color("Bluedark"))
                .foregroundColor(.white)
                .background(Color("Bluedark"))
            Spacer(minLength: 275)
        }
        
    }
    
    struct InformacoesViewPreviews: PreviewProvider {
        static var previews: some View {
            InformacoesView()
        }
    }
}
