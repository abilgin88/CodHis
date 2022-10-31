//
//  ContentView.swift
//  Code History
//
//  Created by Abdullah Bilgin on 10/29/22.
//

import SwiftUI

struct ContentView: View {
    
    let question = Question (
        questionText: "What was the first computer bug?",
        possibleAnswers: ["Ant", "Beetle", "Moth", "Fly"],
        correctAnswerIndex: 2)
    
    
    let mainColor = Color(red: 20/255, green: 28/255, blue: 58/255)
    
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
                HStack{
                    Button(action: {
                        print("Tapped on Choice 1")
                    }, label: {
                        ChoiceTextView(choiceText: question.possibleAnswers[0])
                    })
                    Button(action: {
                        print("Tapped on Choice 2")
                    }, label: {
                        ChoiceTextView(choiceText: question.possibleAnswers[1])
                    })
                    Button(action: {
                        print("Tapped on choice 3")
                    }, label: {
                        ChoiceTextView(choiceText: question.possibleAnswers[2])
                     
                    })
                    Button(action: {
                        print("Tapped on choice 4")
                    }, label: {
                        ChoiceTextView(choiceText: question.possibleAnswers[3])
                      
                    })
                }
            }
        }
        .foregroundColor(Color.white)
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
