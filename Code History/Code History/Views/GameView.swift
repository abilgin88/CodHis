//
//  ContentView.swift
//  Code History
//
//  Created by Abdullah Bilgin on 10/29/22.
//

import SwiftUI

struct GameView: View {
    
    let question = Question (
        questionText: "What was the first computer bug?",
        possibleAnswers: ["Ant", "Beetle", "Moth", "Fly"],
        correctAnswerIndex: 2)
    
    
    //@State var mainColor = Color(red: 20/255, green: 28/255, blue: 58/255)
    @StateObject var viewModel = GameViewModel() // update
    
    var body: some View {
        ZStack{
            GameColor.main.ignoresSafeArea() // update
            VStack{
                Text(viewModel.questionProgressText)
                    .font(.callout)
                    .multilineTextAlignment(.leading)
                    .padding()
                QuestionView(question: viewModel.currentQuestion)
            }
        }
        .foregroundColor(Color.white)
        .navigationBarHidden(true)
        .environmentObject(viewModel) // new line
        .background(
            NavigationLink(destination: ScoreView(viewModel: ScoreViewModel(correctGuess: viewModel.correctGuesses, incorrectGuesses: viewModel.incorrectGuesses)) ,
                       isActive: .constant(viewModel.gameIsOver),
                       label: { EmptyView()})
        )
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            GameView()
        }
    }
}
