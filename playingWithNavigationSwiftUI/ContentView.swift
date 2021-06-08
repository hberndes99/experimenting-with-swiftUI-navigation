//
//  ContentView.swift
//  playingWithNavigationSwiftUI
//
//  Created by Harriette Berndes on 08/06/2021.
//

import SwiftUI



struct PageFour: View {
    var body: some View {
        Text("made it to page 4!")
        Text("page 4 is its own view")
    }
}

struct DataPage: View {
    var greeting: String
    
    var body: some View {
        Text("the data passed along is: \(greeting)")
    }
}

struct Person {
    var firstName: String
    var secondName: String
    var age: Int
}

struct ProfilePage: View {
    var person: Person
    
    var body: some View {
        VStack {
            Circle().size(width: 100, height: 100)
            Text("\(person.firstName)")
            Text("\(person.secondName)")
            Text("\(person.age)")
        }
    }
}

struct ContentView: View {
    
    @State var wantToShowPage3: Bool = false
    @ State var rightOrLeft: String? = nil
    var greeting: String = "hello, I'm learning nav with Swift UI"
    var harriette = Person(firstName: "harriette", secondName: "berndes", age: 22)
    
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
                }.padding(.bottom)
                
                NavigationLink(destination: PageFour()) {
                    Text("go to page 4")
                }.padding(.bottom)
                
                NavigationLink(destination: DataPage(greeting: greeting)) {
                    Text("see something displayed")
                }.padding(.bottom)
                
                NavigationLink(destination: ProfilePage(person: harriette)) {
                    Text("go to profile page")
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
