//
//  GamePage.swift
//  Dadan
//
//  Created by Maha on 16/05/1445 AH.
//

import SwiftUI

struct GamePage: View {
    var body: some View {
        
        NavigationView{

            
            NavigationLink(destination: InfoPage_().navigationBarBackButtonHidden(true)){
                ZStack{
                    Rectangle()
                        .frame(width: 100,height: 100)
                }
            }
        }
    }
}

#Preview {
    GamePage()
}
