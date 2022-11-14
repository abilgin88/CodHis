//
//  ScoreView.swift
//  CodeHistory
//
//  Created by Abdullah Bilgin on 11/14/22.
//

import SwiftUI

struct ScoreView: View {
    var body: some View {
        ZStack{
            GameColor.main.ignoresSafeArea()
            VStack {
                Spacer()
                VStack {
                    Text("Final Score:")
                        .font(.body)
                    Text("???%")
                        .font(.system(size: 50))
                        .bold()
                        .padding()
                }
                Spacer()
                VStack{
                    Text("??? ✅")
                    Text("??? ❌")
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
        ScoreView()
    }
}
