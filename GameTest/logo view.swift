//
//  logo view.swift
//  Dadan
//
//  Created by lana alfaadhel on 09/05/1445 AH.
//


import SwiftUI

extension Color {
    init(hex: String) {
        var cleanHexCode = hex.trimmingCharacters(in: .whitespacesAndNewlines)
        cleanHexCode = cleanHexCode.replacingOccurrences(of: "#", with: "")
        print(cleanHexCode)
        var rgb: UInt64 = 0
        
        Scanner(string: cleanHexCode).scanHexInt64(&rgb)
        
        let redValue = Double((rgb >> 16) & 0xFF) / 255.0
        let greenValue = Double((rgb >> 8) & 0xFF) / 255.0
        let blueValue = Double(rgb & 0xFF) / 255.0
        self.init(red: redValue, green: greenValue, blue: blueValue)
    }
}

struct Logo_View: View {
    @State var isActive: Bool = false
    @State private var width: CGFloat = 20.0
    @State private var xOffset: CGFloat = 0.0

    var body: some View {
        
        ZStack {
                    if self.isActive {
                        LocationRequestView()
                    } else {
                        ZStack{
                             Image("GreenBackground")
                                 .resizable()
                                 .ignoresSafeArea(.all)

                                 
                             VStack{
                                 
                                 
                                 Image("Logo")
                                     .resizable()
                                     .frame(width: 350, height: 330)
                                     .position(x: 365, y: 130)
                                 
                                 ZStack{
                                 
                                     RoundedRectangle(cornerRadius: 83.97)
                                         .fill(Color(hex: "#63493b"))
                                         .frame(width: 146.08 , height: 39.13)
                                         .position(x: 365, y: 120)
                                     
                                     RoundedRectangle(cornerRadius: 83.97)
                                         .fill(Color(hex: "#7B6248"))
                                         .frame(width: 130.54 , height: 27.69)
                                         .position(x: 365, y: 120)
                                     
                                     RoundedRectangle(cornerRadius: 83.97)
                                         .fill(Color(hex: "#FAD62C"))
                                         .frame(width: width , height: 27.69)
                                         .position(x: 400, y: 120)
                                         .offset(x: xOffset)
                                     
                                         .onAppear{
                                             withAnimation(Animation.linear(duration: 5)) {
                                                 width = 130.54
                                                 xOffset = (width - 200) / 2
                                             }
                                         }
                                     
                                 }
                                 
                                 
                                 Text("جاري التحميل...")
                                     .font(.system(size: 40)
                                         .bold())
                                     .padding(40)
                                     .foregroundColor(.white)
                             }
                         }

                    }
                }
                .onAppear {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
                        withAnimation {
                            self.isActive = true
                        }
                    }
                }
        
    }
    
    
    

}

#Preview {
    Logo_View()
}
