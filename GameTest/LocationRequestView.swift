//
//  start.swift
//  Dadan
//
//  Created by Maha on 09/05/1445 AH.
//

import SwiftUI

struct LocationRequestView: View {
    @State private var StartButton = false
    var body: some View {
        NavigationView{
            
            ZStack{
                
                Image("MountainsBackground")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()
                
                
                HStack{
                    Button(action: {print("button pressed")}) {
                        Image("set")
                    }
                    
                }
                .position(x:-360, y:-140)
                .frame(width: 20,height: 20,alignment: .center)
                
                
                Spacer()
                
                HStack {
                    
                    Spacer()
                    
                    Image("ranks")
                    // .resizable()
                        .scaledToFill()
                    //  .ignoresSafeArea()
                        .padding(.trailing, 60)
                        .padding(.bottom, 300)
                }
                
                VStack(spacing: 60){
                    Text("يا هلا فيك!")
                        .font(.title)
                    
                    NavigationLink{
                        Storyline().navigationBarBackButtonHidden()
                    } label: {
                        Image("play")
                    }
                    
                    //
                    //                Button{
                    //                    LocationManager.shared.requestLocation()
                    //                } label:{
                    //                    Image("play")
                    //                        .renderingMode(.original)
                    //                        .frame(width: 22, height: 22, alignment: .center)
                    //                }
                    Text("ابدأ المغامرة")
                    
                }
                
            }
            
        }
            
        }
    }

#Preview {
    LocationRequestView()
}

