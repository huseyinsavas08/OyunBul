//
//  ContentView.swift
//  OyunBul
//
//  Created by Hüseyin Savaş on 15.12.2022.
//

import SwiftUI

struct ContentView: View {
    
    @AppStorage("step") var step = false
    
    var body: some View {
        if step {
            HomeView()
        } else {
            OnBoardView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
