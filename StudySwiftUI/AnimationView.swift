//
//  AnimationView.swift
//  StudySwiftUI
//
//  Created by Tom on 2021/04/22.
//

import SwiftUI

struct AnimationView: View {
    @State private var showDetails = false

    var body: some View {
        VStack {
            Button("버튼") {
                withAnimation {
                    showDetails.toggle()
                }
            }

            if showDetails {
                Text("텍스트1")
                    .transition(.move(edge: .bottom))

              Text("텍스트2")
                  .transition(.identity)

              Text("텍스트3")
                  .transition(.slide)
            }
        }
    }
}

struct AnimationView_Previews: PreviewProvider {
  static var previews: some View {
    AnimationView()
      .previewDevice("iPhone 12 mini")
  }
}
