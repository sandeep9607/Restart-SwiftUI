//
//  OnbordingView.swift
//  Restart
//
//  Created by Sam Maurya on 13/11/21.
//

import SwiftUI

struct OnbordingView: View {
    //MARK: - PROPERTY
    @AppStorage("onbording") var isOnbordingViewActive: Bool = true
    //MARK: - BODY
    var body: some View {
        ZStack {
            Color("ColorBlue")
                .ignoresSafeArea(.all,edges: .all)
            VStack(spacing:20) {
                //MARK: - header
                Spacer()
                VStack(spacing:0){
                    Text("Share.")
                        .font(.system(size:60))
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                    
                    Text("""
                    It's not how much we give but
                    how much love we put into giving.
                    """)
                        .font(.title3)
                        .fontWeight(.light)
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal,10)
                }//: HEADER
                //MARK: - center
                ZStack{
                    CircleGroupView(ShapeColor: .white, ShapeOpacity: 0.2)

                    Image("character-1")
                        .imageModifier()
                    
                }
                
                //MARK: - footer
                Spacer()
                ZStack{
                    //PART
                    //1. static back
                    Capsule()
                        .fill(Color.white.opacity(0.2))
                    Capsule()
                        .fill(Color.white.opacity(0.2))
                        .padding(8)
                    //2. call-to-action
                    Text("Get Started")
                        .font(.system(.title3,design: .rounded))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .offset(x:20)
                    //3. capsule (dynamic width)
                    HStack{
                        Capsule()
                            .fill(Color("ColorRed"))
                            .frame(width: 80)
                        Spacer()
                        
                    }
                    //4. circle(draggable)
                    HStack {
                        ZStack{
                            Capsule()
                                .fill(Color("ColorRed"))
                            Capsule()
                                .fill(Color.black.opacity(0.15))
                                .padding(8)
                            Image(systemName: "chevron.right.2")
                                .font(.system(size: 24,weight: .bold))
                        }
                        .foregroundColor(.white)
                        .frame(width: 80, height: 80, alignment: .center)
                        .onTapGesture {
                            isOnbordingViewActive = false
                        }
                        Spacer()
                    }
                }//: Footer
                .frame( height: 80, alignment: .center)
                .padding()
            } //: VStack
        } //: ZStack
    }
}

struct OnbordingView_Previews: PreviewProvider {
    static var previews: some View {
        OnbordingView()
    }
}
