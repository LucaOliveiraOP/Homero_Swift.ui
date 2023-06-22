
//  LoginView.swift
//  Homero(iOS)
//
//  Created by userext on 30/05/23.
//

import SwiftUI

struct RegistroAluno: View {
    @State private var email: String = ""
    @State private var senha: String = ""
    @State private var isLoading: Bool = false
    @State private var loginSuccess: Bool = false
    
    
    @StateObject var loginmode = LoginViewModel()
    
    var body: some View {
        
        NavigationView{
            VStack{
                
                Image("homero")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 250, height: 100)
                    .padding(.top)
                
                VStack(spacing: 5){
                
                        Text("Registre-se como aluno:")
                        .padding(.trailing,87)
                        
                    Stylefield(text: $email, isSecured: true)
                }
                .padding()
                
                
                NavigationLink(destination: TelaCadastro()) {
                    Text("continuar cadastro")
                    
                }
                .padding()
                .frame(width: 275, height: 40)
                .background(Color("Bluedark"))
                .foregroundColor(.white)
                .cornerRadius(10)
                
                NavigationLink(destination: LoginView()){
                    Text("Já tem uma conta? Faça login!")
                        .padding(.top,30)
                        .foregroundColor((Color("Bluedark")))
                }
                
            }
        }
    }
    
    struct LoginView_Previews: PreviewProvider {
        static var previews: some View {
            RegistroAluno()
        }
    }
    
    
}
