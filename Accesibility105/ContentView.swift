//
//  ContentView.swift
//  Accesibility105
//
//  Created by Fernanda Murillo on 03/12/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 20) {
            Image(systemName: "star.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100)
                .accessibilityLabel("This is my shape. Is a star.")
                .accessibilityHint("Decorative Icon")
            
            Button(action: {
                print("Button")
            }) {
                Text("Press")
                    .font(.title)
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            .accessibilityLabel("Button for Call to Action")
            .accessibilityHint("Press the Button to Call an Action")
            
          
            Text("Hello!")
                .font(.title)
                .accessibilityAddTraits(.isHeader)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
