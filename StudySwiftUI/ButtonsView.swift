//
//  ButtonsView.swift
//  StudySwiftUI
//
//  Created by Tom on 2021/04/13.
//

import SwiftUI

struct ButtonsView : View {
    @State var showDetails = false
    var body: some View {
        VStack {
            Button(action: {
                self.showDetails.toggle()
            }) {
                Text("Show details")
            }
            if showDetails {
                Text("You should see me in a crown")
                    .font(.largeTitle)
                    .lineLimit(nil)
            }
        }
    }
}

struct ButtonsView_Previews: PreviewProvider {
  static var previews: some View {
    ButtonsView()
      .previewDevice("iPhone 12 mini")
  }
}
