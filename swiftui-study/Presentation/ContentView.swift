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
    
    var body: some View {
        NavigationView {
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
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
