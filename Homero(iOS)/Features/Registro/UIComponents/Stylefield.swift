//
//  Styles.swift
//  Homero(iOS)
//
//  Created by userext on 30/05/23.
//

import SwiftUI


struct Stylefield: View {
    @Binding var text: String
    
    @StateObject var stylemodel = LoginViewModel()
    var isSecured: Bool
   
    
    
    var body: some View{
        
            ZStack {
                RoundedRectangle(cornerRadius: 5)
                    .stroke(Color("Bluedark"),lineWidth: 2)
                    .foregroundColor(.clear)
                    .keyboardType(.emailAddress)
                    .padding()
                    .padding(.horizontal,50)
                    .frame(width: 407,height: 92)
                if isSecured {
                    TextField("E-mail",text: $text)
                        .keyboardType(.asciiCapable)
                        .autocorrectionDisabled(true)
                        .padding()
                        .padding(.horizontal,60)
                } else {
                        SecureField("Senha",text: $text)
                            .padding()
                            .padding(.horizontal,60)
                        
                    }
                    }
            }
        }
