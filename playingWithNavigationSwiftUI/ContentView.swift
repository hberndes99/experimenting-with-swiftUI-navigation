//
//  ContentView.swift
//  playingWithNavigationSwiftUI
//
//  Created by Harriette Berndes on 08/06/2021.
//

import SwiftUI

struct ContentView: View {
    
    @State var wantToShowPage3: Bool = false
    @ State var rightOrLeft: String? = nil
    
    var body: some View {
        NavigationView {
            VStack {
                Text("hello page 1")
                Text("hello same page").padding(.bottom)
                NavigationLink(destination: Text("hello page 2 hopefully")) {
                    Text("go to page 2")
                }.padding(.bottom)
                NavigationLink(destination: Text("hopefully a page displayed due to programmatically triggering navigation"), isActive: $wantToShowPage3) {
                    Button("go to page 3") {
                        self.wantToShowPage3 = true
                    }
                }.padding(.bottom)
                Text("choose left or right to go to different pages")
                HStack {
                    NavigationLink(destination: Text("you chose left"), tag: "left", selection: $rightOrLeft) {
                        Button("left") {
                            self.rightOrLeft = "left"
                        }
                    }
                    NavigationLink(destination: Text("you chose right"), tag: "right", selection: $rightOrLeft) {
                        Button("right") {
                            self.rightOrLeft = "right"
                        }
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
