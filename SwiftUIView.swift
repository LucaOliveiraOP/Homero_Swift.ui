//
//  SwiftUIView.swift
//  Homero(iOS)
//
//  Created by userext on 21/06/23.
//

import SwiftUI

struct SwiftUIView: View {
    @State private var texto: String = ""
    var body: some View {
        VStack{
            Rectangle()
                .frame(minWidth: 200,minHeight: 00)
                .foregroundColor(.white)
                .overlay{
                    TextEditor(text: $texto)
                        .frame(height: 100)
                        .border(Color.gray)
                        .padding()
             
                }
        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
