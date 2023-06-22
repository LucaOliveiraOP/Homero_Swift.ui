//
//  PerfilVie.swift
//  Homero(iOS)
//
//  Created by userext on 01/06/23.
//

import SwiftUI

struct PerfilVie: View {
    @State var textretancle: String
    var body: some View {
        
        TabView{
            
            
            NavigationView{
                VStack{
                    
                    Image(systemName: "person.crop.circle")
                        .resizable()
                    
                }
            }
            .tabItem{
                Image(systemName: "video.circle.fill")
                Text("Meus Cursos")
            }
            Text("Conta")
                .tabItem{
                    Image(systemName: "person.crop.circle")
                    Text("Conta")
                }
        }
    }
    
    //    struct PerfilVie_Previews: PreviewProvider {
    //        static var previews: some View {
    //            PerfilVie()
    //        }
    //    }
    //}
    
}
