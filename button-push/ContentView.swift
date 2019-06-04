//
//  ContentView.swift
//  button-push
//
//  Created by Maegan Wilson on 6/4/19.
//  Copyright © 2019 MW. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    
    @State var totalClicked: Int = 0
    
    var body: some View {
        VStack {
            Text("\(totalClicked)")
            Spacer()
            Button(action: {self.totalClicked = self.totalClicked + 1}) {
                Text("Increment Total")
            }
        }.padding(.all, 40)
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
