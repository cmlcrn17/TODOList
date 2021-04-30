//
//  SplashView.swift
//  TODO List
//
//  Created by Ceren TAŞSIN on 14.11.2020.
//

import SwiftUI

struct SplashView: View {
    
    @State var isActive:Bool = false
    
    var body: some View {
        GeometryReader { geometry in
            VStack {
                
                if self.isActive {
                    
                    ContentView()
                    
                } else {
                    
                    Image("getStarted")
                        .resizable()
                        .aspectRatio(geometry.size, contentMode: .fill)
                        .edgesIgnoringSafeArea(.all)
                    
                }
            }
            
            .onAppear {
                
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.5) {
                    
                    withAnimation {
                        self.isActive = true
                    }
                }
            }
        }
    }
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            SplashView()
        }
    }
}
