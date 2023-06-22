//
//  LoginView.swift
//  Homero(iOS)
//
//  Created by userext on 30/05/23.
//

import SwiftUI

struct LoginView: View {
    @State private var email: String = ""
    @State private var senha: String = ""
    @State private var isLoading: Bool = false
    @State private var loginSuccess: Bool = false
    
    
    @StateObject var loginmode = LoginViewModel()
    
    var body: some View {
        
        NavigationView{
            VStack{
                
                Image("gif")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 220, height: 100)
                    .padding(.top)
                
                VStack(spacing: 5){
                    Text("Efetue Login")
                        .padding(.leading, -132)
                    .foregroundColor((Color("Bluedark")))
                    Stylefield(text: $email, isSecured: true)
                    Stylefield(text: $senha, isSecured: false)
                        .padding(.horizontal, 50)
                }
                .padding()
                Text("Esqueci minha senha")
                    .foregroundColor((Color("Bluedark")))
                
                NavigationLink(destination: TelaCadastro()) {
                    Text("Entrar")
                    
                }
                .padding()
                .frame(width: 275, height: 40)
                .background(Color("Bluedark"))
                .foregroundColor(.white)
                .cornerRadius(10)
                NavigationLink(destination: TelaCadastro()){
                    Text("Não tem uma conta? registre-se!")
                        .padding(.top,30)
                        .foregroundColor((Color("Bluedark")))
                }
                
            }
        }
    }
    
    struct LoginView_Previews: PreviewProvider {
        static var previews: some View {
            LoginView()
        }
    }
    
    
}
