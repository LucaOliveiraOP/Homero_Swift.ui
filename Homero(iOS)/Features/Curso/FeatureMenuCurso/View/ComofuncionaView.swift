//
//  ComofuncionaView.swift
//  Homero(iOS)
//
//  Created by userext on 20/06/23.
//

import SwiftUI

struct ComofuncionaView: View {
    var namecurse: String = "Estrutura de dados"
    var body: some View {
        NavigationStack{
        ScrollView{
                VStack{
                    Text(namecurse)
                        .font(.title)
                        .foregroundColor(Color("Bluedark"))
                        //.padding(.top,-132)
                       .padding(.trailing,70)
                    Divider()
                        .frame(width: .infinity,height:5)
                        .foregroundColor(Color("Bluedark"))
                        //.padding(.top,-102)
                    Text("Como funciona?")
                        .bold()
                        .foregroundColor(Color("Bluedark"))
                        .bold()
                        .padding(.trailing,175)
                    Text("conheça as principais funcionalidades que você ter no curso")
                        .foregroundColor(Color("Bluedark"))
                        .bold()
                }
            }
        }
    }
    
    struct ComofuncionaView_Previews: PreviewProvider {
        static var previews: some View {
            ComofuncionaView()
        }
    }
}
