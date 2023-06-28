
//  LoginView.swift
//  Homero(iOS)
//
//  Created by userext on 30/05/23.
//

import SwiftUI


struct CustomBackButton: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        Button(action: {
            // Ação ao clicar no botão de volta personalizado
            self.presentationMode.wrappedValue.dismiss()
        }) {
            Image(systemName: "arrow.backward")
                .imageScale(.large)
                .foregroundColor(Color("Bluedark"))
        }
    }
}

struct NavigationHomero<Content: View,Destination: View, Label: View>: View {
    
    var text: String
    var content: () -> Content
    var label: () -> Label
    var destination: () -> Destination
    
    
    var body: some View {
        NavigationStack {
            content()
            NavigationLink(destination: {destination().navigationBarBackButtonHidden(true).navigationBarItems(leading: CustomBackButton())}, label: {
                Text(text)
            })
        }
    }
    
}

struct NavigationLinkHomero<Destination: View>: ViewModifier {
    
    var text: String
    @ViewBuilder var destination: () -> Destination
    
    func body(content: Content) -> some View {
        content
        NavigationLink(destination: {
            destination().navigationBarBackButtonHidden(true)
                .navigationBarItems(leading: CustomBackButton())
        }, label: {
            Text(text)
                .padding()
                .frame(width: 275, height: 40)
                .background(Color("Bluedark"))
                .foregroundColor(.white)
                .cornerRadius(10)
        })
    }
}

extension View {
    func navigationLinkHomero<Destination: View>(text: String,destination: @escaping () -> Destination) -> some View {
        modifier(NavigationLinkHomero(text: text, destination: destination))
    }
}

struct RegistroAluno: View {
    @State private var email: String = ""
    @State private var senha: String = ""
    @State private var isLoading: Bool = false
    @State private var loginSuccess: Bool = false
    
    
    @StateObject var loginmode = LoginViewModel()
    
    
    var body: some View {
        NavigationStack{
            VStack{
                
                Image("Homero")
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
                .navigationLinkHomero(text: "continuar cadastro", destination: {
                    TelaCadastro()
                })
                
                NavigationLink(destination: LoginView().navigationBarBackButtonHidden(true)
                    .navigationBarItems(leading: CustomBackButton())){
                    Text("Já tem uma conta? Faça login!")
                        .padding(.top,30)
                        .foregroundColor((Color("Bluedark")))
                }
                
            }
        }
    }
}
struct RegistroAluno_Previews: PreviewProvider {
    static var previews: some View {
        RegistroAluno()
    }
}



