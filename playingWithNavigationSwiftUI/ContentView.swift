//
//  ContentView.swift
//  playingWithNavigationSwiftUI
//
//  Created by Harriette Berndes on 08/06/2021.
//

import SwiftUI

struct ContentView: View {
    
    @State var wantToShowPage3: Bool = false
    
    var body: some View {
        NavigationView {
            VStack {
                Text("hello page 1")
                Text("hello same page")
                NavigationLink(destination: Text("hello page 2 hopefully")) {
                    Text("go to page 2")
                }
                NavigationLink(destination: Text("hopefully a page displayed due to programmatically triggering navigation"), isActive: $wantToShowPage3) {
                    Button("go to page 3") {
                        self.wantToShowPage3 = true
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
