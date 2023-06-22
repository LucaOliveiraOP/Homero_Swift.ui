//
//  BarraView.swift
//  Homero(iOS)
//
//  Created by userext on 13/06/23.
//

import SwiftUI

struct BarraView<Content: View>: View {
    var texto: String
    @ViewBuilder var destination: () -> Content
    var body: some View {
        HStack {
            Text(texto)
                .foregroundColor(Color("Bluedark"))
                .frame(width: .infinity)
                .font(.system(size: 14))
            Spacer()
            NavigationLink(destination: destination) {
                Image(systemName: "chevron.right")
                    .foregroundColor(Color("Bluedark"))
            }
            .buttonStyle(.borderless)
        }
        .padding()
        .frame(maxWidth: .infinity)
        .frame(height: 70)
        .border(.gray)
    }
}

struct BarraView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            BarraView(texto: "Informações pessoais") {
                InformacoesView()
            }
        }
    }
}
