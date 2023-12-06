

import SwiftUI

//Game button view
struct GameMode: View {
    var gameMode: Int
    var tag: Int
    @Binding var action: Int?
    var title: String
    
    var body: some View {
        NavigationLink(destination: GameView(gameMode: gameMode), tag: tag, selection: $action) {
            Button {
                self.action = tag
                playSound(sound: "click", type: "wav")
                
            } label: {
                VStack{
                    ZStack{
                        Rectangle()
                            .foregroundColor(Color(hex:"#4C776D"))
                            .frame(width: 120,height: 50)
                            .cornerRadius(10)
                        Text("ابدأ")
                            .font(.system(size: 30))
                            .bold()
                            .foregroundColor(.white)
                        
                        
                        
                    }
                }.frame(width: 100, height: 350, alignment: .bottom)
                
            }
        }
    }
}
