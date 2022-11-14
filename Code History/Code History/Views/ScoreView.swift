//
//  ScoreView.swift
//  CodeHistory
//
//  Created by Abdullah Bilgin on 11/14/22.
//

import SwiftUI

struct ScoreView: View {
    let viewModel: ScoreViewModel
    
    var body: some View {
        ZStack{
            GameColor.main.ignoresSafeArea()
            VStack {
                Spacer()
                VStack {
                    Text("Final Score:")
                        .font(.body)
                    Text("\(viewModel.percentage)%")
                        .font(.system(size: 50))
                        .bold()
                        .padding()
                }
                Spacer()
                VStack{
                    Text("\(viewModel.correctGuess) ✅")
                    Text("\(viewModel.incorrectGuesses) ❌")
                }
                .font(.system(size: 30))
                Spacer()
                NavigationLink(
                    destination: GameView(),
                    label: {
                        BottomTextView(str: "Re-take Quiz")
                    })
            }
            .foregroundColor(.white)
            .navigationBarHidden(true)
        }
    }
}

struct ScoreView_Previews: PreviewProvider {
    static var previews: some View {
        ScoreView(viewModel:  ScoreViewModel(correctGuess: 8, incorrectGuesses: 2))
    }
}
