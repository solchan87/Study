//
//  AlertView.swift
//  StudySwiftUI
//
//  Created by Tom on 2021/04/20.
//

import SwiftUI

struct AlertView: View {
    @State private var showingAlert = false
    
    var body: some View {
        Button(action: {
            self.showingAlert = true
        }) {
            Text("Show Alert")
        }
        .alert(isPresented: $showingAlert) {
            Alert(title: Text("Title"), message: Text("Message"), primaryButton: .destructive(Text("Primary"), action: {
                print("Primary")
            }), secondaryButton: .cancel())
        }
    }
}

struct AlertView_Previews: PreviewProvider {
  static var previews: some View {
    AlertView()
      .previewDevice("iPhone 12 mini")
  }
}
