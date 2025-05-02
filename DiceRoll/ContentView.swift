//
//  ContentView.swift
//  DiceRoll
//
//  Created by Wiktor Bramer on 02/05/2025.
//

import SwiftUI

struct ContentView: View {
    
    @State var dice:Int = 1
    
    var body: some View {
        
        ZStack {
            Color(red: 47/255, green: 41/255, blue: 99/255).ignoresSafeArea()
            VStack {
                Spacer()
                Text("Dice Roll!").font(.largeTitle).fontWeight(.bold).foregroundColor(.white)
                Spacer()
                Image("\(dice)").resizable().scaledToFit().frame(width: 200, height: 200)
                Spacer()
                Button {
                    diceRoll()
                } label: {
                    Text("Roll the dice!").font(.title3).fontWeight(.bold)
                    .padding()
                    .foregroundStyle(.white)
                    .background(Color(red: 69/255, green: 67/255, blue: 114/255))
                    .cornerRadius(100)
                }
                Spacer()

            }
        }
    }
    
    func diceRoll() {
        dice = Int.random(in: 1...6)
    }
}



#Preview {
    ContentView()
}
