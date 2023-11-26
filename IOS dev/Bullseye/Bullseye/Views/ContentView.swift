//
//  ContentView.swift
//  Bullseye
//
//  Created by Sanjith Krishna on 18/05/21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var alertIsVisible:
        Bool = false
    @State private var slider:
        Double = 50.0
    @State private var game:
        Game = Game()
    
    var body: some View {

            VStack {
                Text("Put the bullseye as close as you can to:")
                    .bold()
                    .kerning(2.0)
                    .multilineTextAlignment(.center)
                    .font(.footnote)
                Text(String(game.target))
                    .kerning(-1.0)
                    .font(.largeTitle)
                    .fontWeight(.black)
                
                HStack{
                    Text("1")
                    .bold()
                    Slider(value: $slider, in: 1.0...100.0)
                    Text("100")
                    .bold()
                }
            
            Button(action: {
                print("Hello")
                alertIsVisible = true
            }) {
                Text("Hit me")
            }
            .alert(isPresented: $alertIsVisible, content: {
                let round=Int(slider)
                return Alert(title: Text("Hello there!"), message: Text("The slider value is \(round).\n"+"Score:\(game.points(slider: round))"), dismissButton: .default(Text("Awesome!")))
                  })
            
                
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            
        
    }
}
