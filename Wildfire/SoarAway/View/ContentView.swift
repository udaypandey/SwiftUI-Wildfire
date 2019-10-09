//
//  ContentView.swift
//  Wildfire
//
//  Created by Uday Pandey on 09/10/2019.
//  Copyright © 2019 Uday Pandey. All rights reserved.
//

import SwiftUI

@available(iOS 13.0.0, *)
struct ContentView: View {
    var body: some View {
        ZStack {
            // This seems to be crashing when enabled
            // in xCode 11.2 Beta
            // And its crashing for pre IOS 13!!
            Color.red
//                .edgesIgnoringSafeArea(.all)
            
            VStack(alignment: .center) {
                Text("Soar Away")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                Text("IOS Version: \(UIDevice.current.systemVersion)")
                    .foregroundColor(.white)

            }
        }
    }
}

@available(iOS 13.0.0, *)
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
