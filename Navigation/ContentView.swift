//
//  ContentView.swift
//  Navigation
//
//  Created by Manjot Kaur on 4/23/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            VStack(spacing: 20){
                Text("This is the root view")
                    .font(.largeTitle)
                NavigationLink(destination: SecondView()) {
                        Text("Click me!")
                            .fontWeight(.bold)
                            .foregroundColor(Color.purple)
                }
                NavigationLink(destination: Text("Second navigation link!")
                    .foregroundColor(Color.orange)
                    .multilineTextAlignment(.center)) {
                    Text("Click me, too!")
                        .fontWeight(.bold)
                        .foregroundColor(Color.orange)
                    }
                }
            .toolbar {
                ToolbarItemGroup(placement: .status) {
                    NavigationLink(destination: SecondView()) {
                        Text("About")
                    }
                    NavigationLink(destination: ContactView()) {
                        Text("Contact")
                    }
                    NavigationLink(destination: HelpView()) {
                        Text("Help")
                    }
                }
            }
            .navigationTitle("Home")
            .navigationBarTitleDisplayMode(.inline)
            //.navigationBarHidden(true)
            }
        }
    }

#Preview {
    ContentView()
}
