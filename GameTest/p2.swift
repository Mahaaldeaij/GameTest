//
//  p2.swift
//  mc2
//
//  Created by lujain alrasheed on 13/05/1445 AH.
//

import SwiftUI

struct p2: View {
    @State private var offset = CGSize.zero
    var body: some View {
        ZStack {
            Image("CamelBackground")
                .resizable()
                .ignoresSafeArea(.all)
            
            HStack{
                Text("كفو عليك يالنشمي !\n\nرجعنا النمر ")
                    .font(Font.custom("Abel", size: 20))
                    .multilineTextAlignment(.center)
                    .foregroundColor(.black)
                    .font(.system(size: 150))
                    .position(x: 500, y: 120)
                
                                

                
                Image("Oldman1")
                    .position(x:310,y:250)

                Image("tiger")
                    .position(x:-650,y:100)
                    .frame(width: 1, height: 1)
                    .font(.system(size: 150))
                    .foregroundColor(.blue)
                    .offset(offset)
                    .animation(.smooth(duration: 3), value: offset)
                    .onAppear {withAnimation(.easeIn(duration: 1).delay(1)) {offset = CGSize(width: 250, height: 50)
                                   }
                                }
                        }
            }
          
        }
}
        #Preview {
            p2()
        }
