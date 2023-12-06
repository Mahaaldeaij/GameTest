//
//  Line.swift
//  GameTest
//
//  Created by Maha on 21/05/1445 AH.
//

import SwiftUI
struct Line: View {
    @State private var buttonIsVisible = true
    @State var isC1 = false
    @State var opacities = Array(repeating: 100.0, count: 9)
    @State var buttonTexts = ["𐩢", "𐩵", "𐩱", "𐩭", "𐩬", "𐩥", "𐩮", "𐩼" , "𐩤"]
    @State var clickedButtonCount = 0
    @State var ScoreCounter = 0
    @State var activated: Bool = false
    
    var body: some View {
        NavigationView{
            
            ZStack {
                Image("LineBackground")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()
                
                VStack {
                    Spacer()
                    Text("أجمع الخط المسند!")
                        .font(.largeTitle)
                        .multilineTextAlignment(.center)
                }
                .frame(maxWidth: .infinity)
                .frame(height: 12)
                .padding(.bottom, 270)
                
                HStack {
                    Spacer()
                    Image("RankMountainEmpty")
                        .resizable()
                        .scaledToFill()
                    Image("RankMountainEmpty")
                        .resizable()
                        .scaledToFill()
                    Image(isC1 ? "RankMountainFilled" : "RankMountainEmpty")
                        .resizable()
                        .scaledToFill()
                }
                .frame(width: 80, height: 80, alignment: .center)
                .padding(.leading, 500)
                .padding(.bottom, 300)
                
              
                
                VStack {
                    LazyVGrid(columns: [
                        GridItem(.flexible(), spacing: 4),
                        GridItem(.flexible(), spacing: 4),
                        GridItem(.flexible(), spacing: 4)
                        
                    ], spacing: 4) 
                    {
                     
                        ForEach(0..<9) { index in
                            
                            Button(action: {
                                if buttonIsVisible && opacities[index] != 0 {
                                    opacities[index] = 0
                                    clickedButtonCount += 1
                                    if clickedButtonCount == 9 {
                                        
                                        isC1 = true
                                //        activated = true
                                  
                                    }
                                    
                                }
                                if clickedButtonCount == 9 {
                                    activated = true
                                }
                                
                            }) {
                                Text(buttonTexts[index])
                                    .font(.system(size: 30))
                                    .frame(width: 70, height: 60)
                                    .background(Color(hex: "#3F7A6F"))
                                    .foregroundColor(.white)
                                    .clipShape(Circle())
                                    .opacity(opacities[index])
                                    .padding()
                                //                                .rotation3DEffect(
                                //                                    Angle(degrees: Double.random(in: -20...20)),
                                //                                    axis: (x: 1.0, y: 1.0, z: 1.0)
                                //                                )
                                    .onAppear {
                                        withAnimation(.spring()) {
                                            buttonTexts.shuffle()
                                        }
                                    }
                                
                            }
                        }
                    }
                    .padding()
                    .frame(maxWidth: .infinity, alignment: .center)
                    .frame(height: 300)
                    .padding(.top)
                    .padding(.bottom, -100)
                    
                }
            }
            
            .edgesIgnoringSafeArea(.all)
          
            .background(
                           NavigationLink(
                            destination: SecondInfoPage_().navigationBarBackButtonHidden(),
                               isActive: $activated,
                               label: {
                                   EmptyView()
                               }
                           )
                           .hidden()
                       )        }
      
      

    }
}
#Preview {
    Line()
}
