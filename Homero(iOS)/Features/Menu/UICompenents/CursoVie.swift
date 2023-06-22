//
//  CursoVie.swift
//  Homero(iOS)
//
//  Created by userext on 07/06/23.
//

import SwiftUI

struct CursoVie: View {
    var nomeimage: String
    var cursopequeno: String
    var curso: String
    
    var body: some View {
        NavigationStack{
            Rectangle()
                .shadow(radius: 50)
                .foregroundColor(.white)
                .frame(width: 350,height: 350)
                .overlay{
                    VStack(spacing:10){
                        Image((nomeimage))
                            .opacity(0.2)
                            .frame(width: 350,height: 200)
                            .clipped()
                            .overlay{
                                HStack  {
                                    Text("\(cursopequeno)")
                                        .foregroundColor(Color("Bluedark"))
                                        .font(.title)
                                        .padding(.trailing,270)
                                    
                                }
                            }
                        
                        
                        Spacer()
                        Divider()
                            .frame(width: .infinity)
                            .padding(.top,7)
                        VStack(spacing:27){
                            HStack(){
                                Text("\(curso)")
                                    .padding(.trailing,70)
                            }
                            .foregroundColor(Color("Bluedark"))
                            
                            NavigationLink(destination:CursoPrincipalView()){
                                Text("Acessar curso")
                            }
                            .frame(minWidth: 332,minHeight: 37)
                            
                            .foregroundColor(.white)
                            .background(Color("Bluedark"))
                            .cornerRadius(5)
                            Rectangle()
                            
                            
                        }
                    }
                }
        }
        
    }
    
}


struct CursoVie_Previews: PreviewProvider {
    static var previews: some View {
        CursoVie(nomeimage: "Background", cursopequeno:"POO", curso: "Programação orientada a objetos")
    }
}
