//
//  ForgotPasswordSecureVie.swift
//  Homero(iOS)
//
//  Created by userext on 14/06/23.
//

import SwiftUI
enum Typesenha {
    case atual
    case nova
    case confirmar
}
struct ForgotPasswordSecureVie: View {
    @StateObject var secure = ProfileViewModel()
    var type: Typesenha
    var body: some View {
        
        if type == .atual {
            VStack{
                Rectangle()
                    .overlay{
                        SecureField("Senha atual",text: $secure.senha)
                            .frame(width: .infinity,height: .infinity)
                            .padding()
                            .cornerRadius(20)
                    }
                    .foregroundColor(.white)
                    .frame(maxWidth: 370,maxHeight: 50)
                    .border(Color("Bluedark"))
                //deixar redondo
            }
        }
        if type == .nova {
            VStack{
                Rectangle()
                    .overlay{
                        SecureField("Nova senha",text: $secure.senha)
                            .frame(width: .infinity,height: .infinity)
                            .padding()
                            .cornerRadius(20)
                    }
                    .foregroundColor(.white)
                    .frame(maxWidth: 370,maxHeight: 50)
                    .border(Color("Bluedark"))
                
                //deixar redondo
            }
        }
            if type == .confirmar {
                VStack{
                    Rectangle()
                        .overlay{
                            SecureField("Confirmar nova senha",text: $secure.senha)
                                .frame(width: .infinity,height: .infinity)
                                .padding()
                                .cornerRadius(20)
                        }
                        .foregroundColor(.white)
                        .frame(maxWidth: 370,maxHeight: 50)
                        .border(Color("Bluedark"))
                    
                    //deixar redondo
                }
            }
            
        }
        
    }
    
    struct ForgotPasswordSecureVie_Previews: PreviewProvider {
        static var previews: some View {
            ForgotPasswordSecureVie(type: .atual)
        }
    }

