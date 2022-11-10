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
    
    
    @State var mainColor = Color(red: 20/255, green: 28/255, blue: 58/255)
    
    var body: some View {
        ZStack{
            mainColor.ignoresSafeArea()
            VStack{
                Text("1/10")
                    .font(.callout)
                    .multilineTextAlignment(.leading)
                    .padding()
                
                //Text("What was the first computer bug?")
                Text(question.questionText) // update from hard-code string
                    .font(.largeTitle)
                    .bold()
                    .multilineTextAlignment(.leading)
                Spacer()
                HStack {
                  ForEach(0..<question.possibleAnswers.count) { answerIndex in
                    Button(action: {
                      print("Tapped on option with the text: \(question.possibleAnswers[answerIndex])")
                        mainColor = answerIndex == question.correctAnswerIndex ? .green : .red
                    }, label: {
                      ChoiceTextView(choiceText: question.possibleAnswers[answerIndex])
                    })
                  }
                }
            }
        }
        .foregroundColor(Color.white)
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            GameView()
        }
    }
}
