//
//  HomeView.swift
//  Homero(iOS)
//
//  Created by userext on 07/06/23.
//

import SwiftUI

struct MenuView: View {
    var body: some View {
        VStack(spacing: 0){
            HStack{
                Text("Todos os cursos")
                    .foregroundColor(Color("Bluedark"))
                    .padding(.leading)
                    .font(.title)
                Spacer()
                
            }
            Divider()
            .frame(width: 365,height:2)
            .overlay(Color("Bluedark"))
           
            CursoVie(nomeimage: "Background", cursopequeno: "POO", curso: "Programação orientada a objeto")
            Spacer()
            
                
            
            
            
            
        
        }
    }
}

struct MenuViewTab: View {
    var body: some View {
        
        NavigationStack {
            TabView {
                Group {
                    MenuView()
                        .tabItem{
                            Label("Meus cursos",systemImage:"graduationcap.fill")
                        }
                    ProfileVie()
                        .tabItem{
                            Label("Conta",systemImage:"person.crop.circle.fill")
                        }
                }
                
                .toolbarBackground(.visible, for: .tabBar)
                .toolbarBackground(Color("Bluedark"), for: .tabBar)
            }
        }
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuViewTab()
    }
}
