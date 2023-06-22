////
////  LoginView.swift
////  Homero(iOS)
////
////  Created by userext on 30/05/23.
////
//
//import SwiftUI
//
//struct RegistroAluno: View {
//    @State private var email: String = ""
//    @State private var senha: String = ""
//    @State private var isLoading: Bool = false
//    @State private var loginSuccess: Bool = false
//
//    
//    @StateObject var loginmode = LoginViewModel()
//    
//    var body: some View {
//        
//        NavigationView{
//            VStack{
//                
//                Image("Homero")
//                    .resizable()
//                    .aspectRatio(contentMode: .fit)
//                    .frame(width: 250, height: 207)
//                    .padding(.top, 60)
//                
//                VStack(spacing: 5){
//                    Text("Registre-se como aluno:")
//                    Stylefield(text: $email, isSecured: true)
//                }
//                .padding()
//                
//                NavigationLink(destination: TelaCadastro()) {
//                    Text("continuar cadastro")
//                }.buttonStyle(.borderedProminent)
//                    .cornerRadius(50)
//            }
//                
////                Button(action: {
////                    loginmode.authenticate()
////
////
////                }) {
////                    Text("Continuar cadastro")
////                        .foregroundColor(.white)
////                        .padding()
////                        .frame(width: 200, height: 50)
////                        .background(Color("Bluedark"))
////                        .cornerRadius(10)
////
////                }
//                NavigationLink(destination: ForgotPasswordVie()){
//                    Text("Já tem uma conta? Faça login!")
//                        .padding(.top,30)
//                
//                }
//                VStack{
//                    Rectangle()
//                        .foregroundStyle(.linearGradient(colors: [Color("Bluedark"), .blue],startPoint: .topTrailing, endPoint: .bottomTrailing))
////                        .fill(Color("Bluedark"))
//                        .frame(width:400, height: 300)
//                        .padding(.top,80)
//                        .overlay(
//                            Text("Sistema Homero")
//                                .foregroundColor(.white)
//                                .padding(.bottom,170)
//                                    )
//                        .overlay(
//                            Text("Plataforma de educação adaptiva, com uso de inteligência artificial, na qual os alunos capacitam-se, conforme a sua disponibilidade e condições de aprendizado.")
//                                .foregroundColor(.white)
//                                .padding(.top, 30 )
//                                .padding(.horizontal, 10)
//                                    )
//                }
//                Spacer()
//                .padding(.top, 20)
//                .disabled(isLoading)
//            }
//        }
//    }
//    
//    struct LoginView_Previews: PreviewProvider {
//        static var previews: some View {
//            RegistroAluno()
//        }
//    }
//    
//
