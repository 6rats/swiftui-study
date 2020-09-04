//
//  PushView.swift
//  swiftui-study
//
//  Created by murata on 2020/09/05.
//  Copyright © 2020 Takuro Murata. All rights reserved.
//

import SwiftUI

struct PushView: View {
    var body: some View {
        VStack {
            Text("Pushed View")
            NavigationLink(destination: PushView()) {
                Text("Push")
            }
        }
    }
}

struct PushView_Previews: PreviewProvider {
    static var previews: some View {
        PushView()
    }
}
