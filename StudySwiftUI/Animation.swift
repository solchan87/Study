//
//  Animation.swift
//  StudySwiftUI
//
//  Created by Tom on 2021/04/23.
//

import SwiftUI

// View where Notification view will be inserted
struct NotificationContainerView: View {
    // Initialize with hidden notification.
    @State var showNotification: Bool = false

    var body: some View {
        VStack {
            Button(action: {
                self.showNotification.toggle()
            }) {
                Text("Toggle Notification")
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
            }
            
            NotificationView(visible: $showNotification)
                .offset(y: showNotification ? -UIScreen.main.bounds.height / 3 : -UIScreen.main.bounds.height)
                .animation(
                    .interpolatingSpring(
                        mass: 0.5,
                        stiffness: 100.0,
                        damping: 10,
                        initialVelocity: 0
                    )
                )
        }
    }
}

// Creates effect of blurring of content below view that has this style applied to it
struct BlurView: UIViewRepresentable {
    var style: UIBlurEffect.Style = .systemMaterial
    func makeUIView(context: Context) -> UIVisualEffectView {
        return UIVisualEffectView(effect: UIBlurEffect(style: style))
    }
    func updateUIView(_ uiView: UIVisualEffectView, context: Context) {
        uiView.effect = UIBlurEffect(style: style)
    }
}

//
// Notification View. Title, Description, Action button all can be inserted from
// the parent View if necessary.
//
struct NotificationView: View {
    @Binding var visible: Bool
    @State private var offset: CGSize = .zero
    @State private var didJustSwipe = false
    
    var body: some View {
        
        HStack {
            VStack(alignment: .leading, spacing: 0) {
                Text("Notification Title")
                    .font(.system(size: 13))
                    .frame(maxWidth: .infinity, alignment: .topLeading)
                    .padding(.bottom, 10)
                
                Text("Notification Description")
            }
            .padding(.leading, 15)
            .contentShape(Rectangle())
            .onTapGesture {
                self.visible.toggle()
            }
            
            Button(action: {
                self.visible.toggle()
            }) {
                Image(systemName: "checkmark.circle.fill")
                    .padding(.horizontal, 15)
                    .padding(.vertical, 20)
                    .foregroundColor(Color(UIColor.label))
            }
            .buttonStyle(BorderlessButtonStyle())
        }
        .padding(.vertical, 10)
        .background(BlurView(style: .systemChromeMaterial))
        .frame(width: UIScreen.main.bounds.width - 50)
        .cornerRadius(10)
        .shadow(color: Color.black.opacity(0.2), radius: 5, y: 3)
        .gesture(self.gesture)
        .offset(y: self.offset.height)
    }
    
    var gesture: some Gesture {
        DragGesture()
            .onChanged {
                if self.didJustSwipe {
                    self.didJustSwipe = false
                    self.offset = .zero
                } else {
                    self.offset = $0.translation
                }
            }
            .onEnded {
                let w = $0.translation.height
                if w <= -50 {
                    self.didJustSwipe = true
                    self.offset = .zero
                    self.visible.toggle()
                } else {
                    self.offset = .init(width: 0, height: 0)
                }
            }
    }
}
struct NotificationContainerView_Previews: PreviewProvider {
  static var previews: some View {
    NotificationContainerView()
      .previewDevice("iPhone 12 mini")
  }
}
