//
//  ContentView.swift
//  playingWithNavigationSwiftUI
//
//  Created by Harriette Berndes on 08/06/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("hello page 1")
                Text("hello same page")
                NavigationLink(destination: Text("hello page 2 hopefully")) {
                    Text("go to page 2")
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