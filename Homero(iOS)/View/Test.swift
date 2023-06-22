//
//  Test.swift
//  Homero(iOS)
//
//  Created by userext on 12/06/23.
//

import SwiftUI

struct Test: View {
    var body: some View {
        TabView {
            VStack(spacing: 0) {
                ScrollView {
                    ForEach(0 ..< 15) { item in
                        RoundedRectangle(cornerRadius: 12)
                            .fill(Color.orange)
                            .frame(height: 44)
                            .padding()
                    }
                }
            }
            .font(.title2)
            .tabItem {
                Image(systemName: "star")
                Text("Tab 1")
            }
            
            Text("Tab 2")
                .tabItem {
                    Image(systemName: "moon")
                    Text("Tab 2")
                }
        }
        .onAppear {
            let appearance = UITabBarAppearance()
            appearance.backgroundEffect = UIBlurEffect(style: .systemUltraThinMaterial)
            appearance.backgroundColor = UIColor(Color.orange.opacity(0.2))
            
            // Use this appearance when scrolling behind the TabView:
            UITabBar.appearance().standardAppearance = appearance
            // Use this appearance when scrolled all the way up:
            UITabBar.appearance().scrollEdgeAppearance = appearance
        }
    }
}

struct Test_Previews: PreviewProvider {
    static var previews: some View {
        Test()
    }
}
