//
//  NameView.swift
//  Homero(iOS)
//
//  Created by userext on 13/06/23.
//

import SwiftUI

struct NameView: View {
    var name: String
    var body: some View {
        Text(name)
            .font(.title)
            .foregroundColor(Color("Bluedark"))
            .bold()
    }
}

struct NameView_Previews: PreviewProvider {
    static var previews: some View {
        NameView(name: "Nome do aluno")
    }
}
