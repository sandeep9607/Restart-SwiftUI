//
//  ContentView.swift
//  Restart
//
//  Created by Sam Maurya on 13/11/21.
//

import SwiftUI

struct ContentView: View {
    //set value as key value = Userdefault
    @AppStorage("onbording") var isOnbordingViewActive: Bool = true
    
    var body: some View {
        ZStack{
          
            if isOnbordingViewActive {
                OnbordingView()
            }else{
                HomeView()
            }
        }
//        Text("Hello, world!")
//            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
