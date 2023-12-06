//
//  PauseView.swift
//  Dadan
//
//  Created by lana alfaadhel on 18/05/1445 AH.
//

import SwiftUI

struct PauseView: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        
        NavigationView(content: {
            
            ZStack{
    
                Rectangle()
                    .fill(Color(hex: "#4C776D"))
                    .ignoresSafeArea(.all)
                
                
                VStack{
                    
                    Button("",systemImage: "x.circle.fill") {dismiss()}
                    .font(.system(size: 40))
                    .foregroundColor(Color(hex: "#FAD62C"))
                    .position(x:10, y:40)
                    
                    Text("وين دك تروح؟")
                        .font(.system(size: 40))
                        .bold()
                        .frame(width: 300, height: 100, alignment: .bottom)
                        .colorInvert()
                    
                    HStack{
                        
                        Button("",systemImage: "play.fill") {dismiss()}
                        .font(.system(size: 40))
                        .foregroundColor(Color(hex: "#FAD62C"))
                        .padding(100)
                        
                        NavigationLink(destination: LocationRequestView().navigationBarBackButtonHidden(true)){
                            Image(systemName: "house.fill")
                                .font(.system(size: 40))
                                .foregroundColor(Color(hex: "#FAD62C"))
                                .padding(100)
                        }
                    }
                }
            }
        })
    }
}

#Preview {
    PauseView()
}
