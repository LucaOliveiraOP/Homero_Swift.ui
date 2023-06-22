//
//  Textfieldprofile.swift
//  Homero(iOS)
//
//  Created by userext on 14/06/23.
//

import SwiftUI

enum Write {
    case cpfwrite
    case namewrite
    case nascimentowrite
}

struct Textfieldprofile: View {
    @StateObject var textfield = ProfileViewModel()
    var write: Write
    
    var body: some View {
        if write == .namewrite {
            VStack{
                Rectangle()
                    .overlay{
                        TextField("Nome completo",text: $textfield.name)
                            .frame(width: .infinity,height: .infinity)
                            .padding()
                            .cornerRadius(20)
                    }
                    .foregroundColor(.white)
                    .frame(maxWidth: 370,maxHeight: 70)
                    .border(Color("Bluedark"))
                    
                    //deixar redondo
            }
            
            
            
        }
        if write == .cpfwrite {
            VStack{
                Rectangle()
                    .overlay{
                        TextField("CPF",text: $textfield.cpf)
                            .frame(width: .infinity,height: .infinity)
                            .padding()
                            .cornerRadius(20)
                    }
                    .foregroundColor(.white)
                    .frame(maxWidth: 370,maxHeight: 70)
                    .border(Color("Bluedark"))
                    
                    //deixar redondo
            }
        }
        if write == .nascimentowrite {
            VStack{
                Rectangle()
                    .overlay{
                        TextField("Data de nascimento",text: $textfield.nascimento)
                            .frame(width: .infinity,height: .infinity)
                            .padding()
                            .cornerRadius(20)
                    }
                    .foregroundColor(.white)
                    .frame(maxWidth: 370,maxHeight: 70)
                    .border(Color("Bluedark"))
                    
                    //deixar redondo
            }
        }
    }
    
    struct Textfieldprofile_Previews: PreviewProvider {
        static var previews: some View {
            Textfieldprofile( write: .namewrite)
        }
    }
}
