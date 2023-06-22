//
//  ImageView.swift
//  Homero(iOS)
//
//  Created by userext on 13/06/23.
//

import SwiftUI

struct ImageView: View {
    var nomedoavata: String
    var body: some View {
        VStack{
            HStack{
                Spacer()
                Image(nomedoavata)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 200,height: 200)
                    .clipShape(Circle())
                    .clipped()
                    .padding()
                Spacer()
            }
            Spacer()
        }
    }
}

struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        ImageView(nomedoavata: "HomeroAvata")
    }
}
