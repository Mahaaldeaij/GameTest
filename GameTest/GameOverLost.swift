

import SwiftUI

struct GameOverLost: View {
    @State var presentPopup = false

    var body: some View {
        
        NavigationView{

            ZStack{
                Image("CamelBackground")
                    .resizable()
                    .ignoresSafeArea(.all)
                
                Rectangle()
                    .fill(Color(hex: "#95521B"))
                    .opacity(0.2)
                    .ignoresSafeArea()
     

                VStack(alignment:.center){
                    
                    Text("خسرت.. إرفع علومك!")
                        .font(.system(size: 50))
                        .foregroundColor(.white)
                        .shadow(color: Color(hex: "#962A55"), radius: 1, x:3,y:1)
                    ZStack{
                        Rectangle()
                            .frame(width: 350, height: 120, alignment: .center)
                            .foregroundColor(.white)
                            .opacity(0.5)
                            .cornerRadius(10)
                        HStack{
                            Image("RankMountainEmpty")
                            Image("RankMountainEmpty")
                            Image("RankMountainEmpty")
                            }
                    }
                    
                    NavigationLink(destination: Logo_View().navigationBarBackButtonHidden(true)){
                        Image(systemName: "gobackward")
                            .font(.system(size: 40))
                            .bold()
                            .foregroundColor(Color(hex: "#4C776D"))
                    }
                }
            }
        }
    }
}

#Preview {
    GameOverLost()
}
