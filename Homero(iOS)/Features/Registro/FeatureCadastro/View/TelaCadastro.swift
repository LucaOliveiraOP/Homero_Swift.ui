import SwiftUI

struct TelaCadastro: View {
    
    @State private var textfieldnome: String = ""
    @State private var textfieldemail: String = ""
    @State private var Securefield: String = ""
    @State private var Securefield2: String = ""
    @State private var showAlert = false
    
    
    var body: some View {
        VStack {
            
            Image("Homero")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 220, height: 100)
                .padding(.bottom, 100)
            
            
            
            TextField("Nome", text: $textfieldnome)
                .padding()
                .background(
                     RoundedRectangle(cornerRadius: 10)
                        .stroke(Color("Bluedark"),lineWidth: 2)
                 )
                .padding(.horizontal, 50)
                .padding(.bottom)

            
            TextField("E-mail", text: $textfieldemail)
                .padding()
                .background(
                     RoundedRectangle(cornerRadius: 10)
                        .stroke(Color("Bluedark"),lineWidth: 2)
                 )
                .padding(.horizontal, 50)
                .padding(.bottom)
            
            SecureField("Senha", text: $Securefield)
                .padding()
                .background(
                     RoundedRectangle(cornerRadius: 10)
                        .stroke(Color("Bluedark"),lineWidth: 2)
                 )
                .padding(.horizontal, 50)
                .padding(.bottom)
            
            SecureField("Confirme a Senha", text: $Securefield2)
                .padding()
                .background(
                     RoundedRectangle(cornerRadius: 10)
                        .stroke(Color("Bluedark"),lineWidth: 2)
                 )
                .padding(.horizontal, 50)
                .padding(.bottom)
            
            Button(action: {
                if Securefield != Securefield2 {
                    showAlert = true
                } else{
                    
                    
                }
                
            }) {
                Text("Cadastrar")
                    .foregroundColor(.white)
                    .padding()
                    .frame(width: 275, height: 50)
                    .background(Color("Bluedark"))
                    .cornerRadius(10)
            }
            .padding(.top, 20)
            .alert(isPresented: $showAlert) {
                Alert(title: Text("⚠️ Erro!"),
                      message: Text("Não foi possivel concluir o cadastro, as senhas estão diferentes!"),
                      dismissButton: .default(Text("OK")))
            }
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            TelaCadastro()
        }
    }
}
