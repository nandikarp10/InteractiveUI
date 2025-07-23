//
//  ContentView.swift
//  InteractiveUI
//
//  Created by Nandika P on 7/23/25.
//

import SwiftUI

struct ContentView: View {
    @State private var name: String = ""
    @State private var ID: String = ""
    @State private var textTitle = "Answer the following questions"
    
    var body: some View {
        VStack {
            Text(textTitle)
                .font(.title)
            TextField("Type your name here...", text: $name)
                .multilineTextAlignment(.center)
                .font(.title)
                .border(Color.gray, width:1)
            TextField("Type your ID here...", text: $ID)
                .multilineTextAlignment(.center)
                .font(.title)
                .border(Color.gray, width:1)
            Button("Submit"){
                textTitle = "Thank you,  \(name) for your response!"
            }
            .font(.title2)
            .buttonStyle(.borderedProminent)
            .tint(.purple)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
