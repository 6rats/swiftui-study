//
//  ContentView.swift
//  swiftui-study
//
//  Created by murata on 2020/09/05.
//  Copyright © 2020 Takuro Murata. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isShowingModal = false
    @State private var isShowingEmpty = false
    
    var body: some View {
        NavigationView {
            GeometryReader { geometry in
                ZStack {
                    VStack {
                        Text("Hello, World!")
                        Button(
                            action: {
                                self.isShowingModal.toggle()
                        }) {
                            Text("Modal")
                        }.sheet(isPresented: self.$isShowingModal) {
                            ModalView()
                        }
                        NavigationLink(destination: PushView()) {
                            Text("Push")
                        }
                        Button(
                            action: {
                                self.isShowingEmpty.toggle()
                        }) {
                            Text("Empty Switch")
                        }
                    }.frame(width: geometry.size.width,
                        height: geometry.size.height)
                    if self.isShowingEmpty {
                        Text("Empty")
                            .frame(width: geometry.size.width,
                                   height: geometry.size.height)
                            .background(Color.white)
                    }
                }.background(Color.gray)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
